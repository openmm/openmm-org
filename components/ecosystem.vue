<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>OpenMM Ecosystem</v-card-title>
        <v-card-text>
          These packages and tools, maintained along with the core OpenMM
          library by the OpenMM development team, provide additional
          functionality for building and running simulations with OpenMM, as
          well as plugins that expand OpenMM's capabilities by interfacing with
          other software.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://github.com/openmm/openmm-ml/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-ML</v-card-title>
        <v-card-text>
          A high-level API for using machine learning models, including AceFF, AIMNet2, ANI, FeNNix, MACE, Orb, and more, in OpenMM simulations.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmmforcefields/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMMForceFields</v-card-title>
        <v-card-text>
          OpenMM support for AMBER, CHARMM, OpenFF, and Espaloma force fields, and small molecule parameterization with GAFF, Espaloma and the OpenFF Toolkit.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-setup" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM Setup</v-card-title>
        <v-card-text>
          A graphical application to set up and run simulations with OpenMM. Includes pull-down menus, pop-up tips, error checking, and live script building
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/pandegroup/pdbfixer/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>PDBFixer</v-card-title>
        <v-card-text>
          A powerful, flexible tool for preparing PDB files for molecular simulation or modeling, capable of running in interactive, Python-scriptable, or fully automated modes.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-plumed/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-PLUMED</v-card-title>
        <v-card-text>
          Provides a connection between OpenMM and PLUMED. It allows you to bias or analyze an OpenMM simulation based on collective variables.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-torch/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-Torch</v-card-title>
        <v-card-text>
          A plugin for OpenMM that allows PyTorch models to be used for defining an OpenMM force object.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-xtb/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-XTB</v-card-title>
        <v-card-text>
          A plugin providing a connection between OpenMM and the XTB quantum chemistry package.
        </v-card-text>
      </v-card>
      <v-card href="https://raw.githubusercontent.com/openmm/openmm/refs/heads/master/examples/extras/optimizepme.py" target="blank" class="ma-4" width="300" hover>
        <v-card-title>PME Optimizer</v-card-title>
        <v-card-text>
          A script to optimize the performance of PME. It runs a series of simulations and selects the parameters that give best performance for simulating a particular system on particular hardware.
        </v-card-text>
      </v-card>
      <v-card href="https://raw.githubusercontent.com/openmm/openmm/refs/heads/master/examples/extras/rigid.py" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Rigid Body Creator</v-card-title>
        <v-card-text>
          A script implementing rigid bodies in OpenMM by adding appropriate constraints and converting particles to virtual sites.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Built with OpenMM</v-card-title>
        <v-card-text>
          Third-party packages that are not developed directly by the OpenMM
          team, but use OpenMM or have interfaces with OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://github.com/google-deepmind/alphafold" target="blank" class="ma-4" width="300" hover>
        <v-card-title>AlphaFold 2</v-card-title>
        <v-card-text>
          Machine learning pipeline for predicting protein structures from amino acid sequences.
        </v-card-text>
      </v-card>
      <v-card href="https://foldingathome.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Folding@home</v-card-title>
        <v-card-text>
          A distributed computing project for simulating protein dynamics, including the process of protein folding and the movements of proteins implicated in a variety of diseases.
        </v-card-text>
      </v-card>
      <v-card href="https://openforcefield.org/software" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Open Force Field</v-card-title>
        <v-card-text>
          Tools for parameterizing, benchmarking, and using high-accuracy small molecule and biomolecular force fields.
        </v-card-text>
      </v-card>
      <v-card href="https://openfree.energy/projects" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Open Free Energy</v-card-title>
        <v-card-text>
          Tools for performing alchemical free energy calculations.
        </v-card-text>
      </v-card>
      <v-card href="https://www.acellera.com/products/molecular-dynamics-software-gpu-acemd/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>ACEMD</v-card-title>
        <v-card-text>
          The next generation molecular dynamic simulation engine designed to accelerate drug discovery process by providing all necessary capabilities.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/Gallicchio-Lab/AToM-OpenMM" target="blank" class="ma-4" width="300" hover>
        <v-card-title>AToM-OpenMM</v-card-title>
        <v-card-text>
          An OpenMM-based framework for absolute and relative binding free energy calculations with the Alchemical Transfer Method
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/leeping/forcebalance/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>ForceBalance</v-card-title>
        <v-card-text>
          A powerful and highly versatile software package for force field optimization.
        </v-card-text>
      </v-card>
      <v-card href="https://www.gpugrid.net/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>GPUGRID.net</v-card-title>
        <v-card-text>
          A distributed computing infrastructure devoted to biomedical research to understand the function of biomolecules for health and disease.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/leeping/OpenMM-MD/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-MD</v-card-title>
        <v-card-text>
           A general purpose script (with lots of comments) that uses the OpenMM Python module to drive MD simulations. Simulation options are handled via an input file.
        </v-card-text>
      </v-card>
      <v-card href="https://openmmtools.readthedocs.io/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMMTools</v-card-title>
        <v-card-text>
          Integrators, enhanced sampling methods, test systems, and alchemical factories for OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="https://siremol.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>SireMol</v-card-title>
        <v-card-text>
          An advanced, multiscale, molecular simulation framework. It allows
          to quickly prototype and develop new algorithms.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/ADicksonLab/wepy" target="blank" class="ma-4" width="300" hover>
        <v-card-title>wepy</v-card-title>
        <v-card-text>
          A Weighted Ensemble (WE) simulation framework in Python with first class support for OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
  </div>
</template>
