# Histone methyltransferase simulation with a multisite water model (TIP4P-Ew)

*Simulating a protein with a multisite water model.*

This tutorial is described in [OpenMM 7](http://dx.doi.org/10.1371/journal.pcbi.1005659) publication.

## Files

* All input files can be found in [`hkmt_zinc.zip`](files/hkmt_tip4pew.zip)

## Introduction

OpenMM includes a selection of [water models](https://en.wikipedia.org/wiki/Water_model), such as [TIP3P](http://www.sklogwiki.org/SklogWiki/index.php/TIP3P_model_of_water), [TIP4P-ew](http://www.sklogwiki.org/SklogWiki/index.php/TIP4P-Ew_model_of_water), and [TIP5P](http://www.sklogwiki.org/SklogWiki/index.php/TIP5P_model_of_water).
The use of the latter two is facilitated by OpenMM's support for [Extra Particles](http://docs.openmm.org/7.1.0/userguide/application.html#adding-or-removing-extra-particles)---particles that are not ordinary atoms, such as the virtual sites in these water models, dummy atoms in multisite metal ion models, etc.
This example illustrates the use of OpenMM's modeling and simulation pipelines to study the behavior of a water channel crucial to reactivity in the histone methyltransferase SET7/9 (Uniprot: [`Q8WTS6`](http://www.uniprot.org/uniprot/Q8WTS6)) after removal of ligands from the tertiary complex, using 3 different water models.

## Cleaning up the protein with pdbfixer

We begin from the [1O9S PDB file](http://www.rcsb.org/pdb/explore.do?structureId=1o9s), remove unwanted chains (reduce the dimer to a monomer, remove ligands), add missing residues (only those in the middle of the chain) and missing heavy atoms using [PDBFixer](https://github.com/pandegroup/pdbfixer).
We preserve all crystallographic waters because of the water channel we are interested in.
```python
from pdbfixer import PDBFixer
from simtk.openmm.app import PDBFile

fixer = PDBFixer('pdb1o9s.ent')
fixer.removeChains([1,2,3,4,5,7,9])
fixer.findMissingResidues()

# only add missing residues in the middle of the chain, do not add terminal ones
chains = list(fixer.topology.chains())
keys = fixer.missingResidues.keys()
missingResidues = dict()
for key in keys:
    chain = chains[key[0]]
    if not (key[1] == 0 or key[1] == len(list(chain.residues()))):
        missingResidues[key] = fixer.missingResidues[key]
fixer.missingResidues = missingResidues

fixer.findMissingAtoms()
fixer.addMissingAtoms()

PDBFile.writeFile(fixer.topology, fixer.positions, open('1o9s_fixed.pdb', 'w'))
```
We load in the resulting PDB file and add hydrogens and solvent using the OpenMM's `app.Modeller`. We will use the following water models: TIP3P, TIP4P-ew, and TIP5P. For the latter two an additional step - addition of the water extra particles to the crystallographic waters - is performed. We use the `amber99sbildn` forcefield - the `ForceField` object is created by passing the appropriate XML files. The `System` is created by calling the `createSystem` method on the `ForceField` object. Next, the `LangevinIntegrator` and the `Simulation` are set up, using the topology and positions from the `Modeller` object. In this example we will use the CUDA platform, with mixed precision. The simulation is energy minimized and equilibrated for 100 steps. Reporters are attached and the production simulation propagated for 50 ns.

## Solvating and simulating with TIP3P

If we want to use TIP3P, setup is straightforward:
```python
from __future__ import print_function
from simtk.openmm import app
import simtk.openmm as mm
from simtk import unit
from sys import stdout

# load in input PDB file and force field XML files
pdb = app.PDBFile('1o9s_fixed.pdb')
forcefield = app.ForceField('amber99sbildn.xml', 'tip3p.xml')

# use app.Modeller to add hydrogens and solvent
modeller = app.Modeller(pdb.topology, pdb.positions)
modeller.addHydrogens(forcefield)
modeller.addSolvent(forcefield, model='tip3p', padding=1.0*unit.nanometers)
app.PDBFile.writeFile(modeller.topology, modeller.positions, open('1o9s_modeller_tip3p.pdb', 'w'))

# prepare system and integrator
system = forcefield.createSystem(modeller.topology, nonbondedMethod=app.PME,
    nonbondedCutoff=1.0*unit.nanometers, constraints=app.HBonds, rigidWater=True,
    ewaldErrorTolerance=0.0005)
integrator = mm.LangevinIntegrator(300*unit.kelvin, 1.0/unit.picoseconds,
    2.0*unit.femtoseconds)
integrator.setConstraintTolerance(0.00001)

# prepare simulation
platform = mm.Platform.getPlatformByName('CUDA')
properties = {'CudaPrecision': 'mixed'}
simulation = app.Simulation(modeller.topology, system, integrator, platform,
    properties)
simulation.context.setPositions(modeller.positions)

# minimize
print('Minimizing...')
simulation.minimizeEnergy()

# equilibrate for 100 steps
simulation.context.setVelocitiesToTemperature(300*unit.kelvin)
print('Equilibrating...')
simulation.step(100)

# append reporters
simulation.reporters.append(app.DCDReporter('trajectory_tip3p.dcd', 1000))
simulation.reporters.append(app.StateDataReporter(stdout, 1000, step=True,
    potentialEnergy=True, temperature=True, progress=True, remainingTime=True,
    speed=True, totalSteps=25000000, separator='\t'))

# run 50 ns of production simulation
print('Running Production...')
simulation.step(25000000)
print('Done!')
```

## Solvating and simulating TIP4P-Ew

Using a four-site water model like TIP4P-Ew requires making sure we explicitly call [`modeller.addExtraParticles`](http://docs.openmm.org/7.1.0/api-python/generated/simtk.openmm.app.modeller.Modeller.html#simtk.openmm.app.modeller.Modeller.addExtraParticles) to model in the missing virtual sites:
```python
from __future__ import print_function
from simtk.openmm import app
import simtk.openmm as mm
from simtk import unit
from sys import stdout

# load in input PDB file and force field XML files
pdb = app.PDBFile('1o9s_fixed.pdb')
forcefield = app.ForceField('amber99sbildn.xml', 'tip4pew.xml')

# use app.Modeller to add hydrogens, extra particles, and solvent
modeller = app.Modeller(pdb.topology, pdb.positions)
modeller.addHydrogens()
modeller.addExtraParticles(forcefield)
modeller.addSolvent(forcefield, model='tip4pew', padding=1.0*unit.nanometers)
app.PDBFile.writeFile(modeller.topology, modeller.positions, open('1o9s_modeller_tip4pew.pdb', 'w'))

# prepare system and integrator
system = forcefield.createSystem(modeller.topology, nonbondedMethod=app.PME,
    nonbondedCutoff=1.0*unit.nanometers, constraints=app.HBonds, rigidWater=True,
    ewaldErrorTolerance=0.0005)
integrator = mm.LangevinIntegrator(300*unit.kelvin, 1.0/unit.picoseconds,
    2.0*unit.femtoseconds)
integrator.setConstraintTolerance(0.00001)

# prepare simulation
platform = mm.Platform.getPlatformByName('CUDA')
properties = {'CudaPrecision': 'mixed'}
simulation = app.Simulation(modeller.topology, system, integrator, platform,
    properties)
simulation.context.setPositions(modeller.positions)

# minimize
print('Minimizing...')
simulation.minimizeEnergy()

# equilibrate for 100 steps
simulation.context.setVelocitiesToTemperature(300*unit.kelvin)
print('Equilibrating...')
simulation.step(100)

# append reporters
simulation.reporters.append(app.DCDReporter('trajectory_tip4pew.dcd', 1000))
simulation.reporters.append(app.StateDataReporter(stdout, 1000, step=True,
    potentialEnergy=True, temperature=True, progress=True, remainingTime=True,
    speed=True, totalSteps=25000000, separator='\t'))

# run 50 ns of production simulation
print('Running Production...')
simulation.step(25000000)
print('Done!')
```

TIP5P:

```python
from __future__ import print_function
from simtk.openmm import app
import simtk.openmm as mm
from simtk import unit
from sys import stdout

# load in input PDB file and force field XML files
pdb = app.PDBFile('1o9s_fixed.pdb')
forcefield = app.ForceField('amber99sbildn.xml', 'tip5p.xml')

# use app.Modeller to add hydrogens, extra particles, and solvent
modeller = app.Modeller(pdb.topology, pdb.positions)
modeller.addHydrogens()
modeller.addExtraParticles(forcefield)
modeller.addSolvent(forcefield, model='tip5p', padding=1.0*unit.nanometers)
app.PDBFile.writeFile(modeller.topology, modeller.positions, open('1o9s_modeller_tip5p.pdb', 'w'))

# prepare system and integrator
system = forcefield.createSystem(modeller.topology, nonbondedMethod=app.PME,
    nonbondedCutoff=1.0*unit.nanometers, constraints=app.HBonds, rigidWater=True,
    ewaldErrorTolerance=0.0005)
integrator = mm.LangevinIntegrator(300*unit.kelvin, 1.0/unit.picoseconds,
    2.0*unit.femtoseconds)
integrator.setConstraintTolerance(0.00001)

# prepare simulation
platform = mm.Platform.getPlatformByName('CUDA')
properties = {'CudaPrecision': 'mixed'}
simulation = app.Simulation(modeller.topology, system, integrator, platform,
    properties)
simulation.context.setPositions(modeller.positions)

# minimize
print('Minimizing...')
simulation.minimizeEnergy()

# equilibrate for 100 steps
simulation.context.setVelocitiesToTemperature(300*unit.kelvin)
print('Equilibrating...')
simulation.step(100)

# append reporters
simulation.reporters.append(app.DCDReporter('trajectory_tip5p.dcd', 1000))
simulation.reporters.append(app.StateDataReporter(stdout, 1000, step=True,
    potentialEnergy=True, temperature=True, progress=True, remainingTime=True,
    speed=True, totalSteps=25000000, separator='\t'))

# run 50 ns of production simulation
print('Running Production...')
simulation.step(25000000)
print('Done!')
```
