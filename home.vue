<template>
  <v-container>
    <v-row align="center" justify="center">
      <v-col cols=auto>
        <v-card flat>
          <v-card-title>
            Introduction to OpenMM
          </v-card-title>
          <v-card-text>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/AlWsbbdUNC0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </v-card-text>
          <v-card-actions>
            <v-btn>More videos</v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
    <v-row align="center" justify="center">
      <v-col cols="auto">
        <v-card flat>
          <v-card-title>
            Use OpenMM from Python
          </v-card-title>
          <highlightjs language='python' code="from simtk.openmm.app import *
from simtk.openmm import *
from simtk.unit import *
from sys import stdout

pdb = PDBFile('input.pdb')
forcefield = ForceField('amber99sb.xml', 'tip3p.xml')
system = forcefield.createSystem(pdb.topology, nonbondedMethod=PME, nonbondedCutoff=1*nanometer, constraints=HBonds)
integrator = LangevinIntegrator(300*kelvin, 1/picosecond, 0.002*picoseconds)
simulation = Simulation(pdb.topology, system, integrator)
simulation.context.setPositions(pdb.positions)
simulation.minimizeEnergy()
simulation.reporters.append(PDBReporter('output.pdb', 1000))
simulation.reporters.append(StateDataReporter(stdout, 1000, step=True, potentialEnergy=True, temperature=True))
simulation.step(10000)"></highlightjs>
          <v-card-actions>
            <v-btn>Script builder</v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>