<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>Built with OpenMM</v-card-title>
        <v-card-text>
          Trusted and used by scientists around the world.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://www.acellera.com/products/molecular-dynamics-software-gpu-acemd/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>ACEMD</v-card-title>
        <v-card-text>
          The next generation molecular dynamic simulation engine designed to accelerate drug discovery process by providing all necessary capabilities.
        </v-card-text>
      </v-card>
      <v-card href="https://www.charmm.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>CHARMM</v-card-title>
        <v-card-text>
          A molecular simulation program with many energy functions, enhanced
          sampling methods, implicit solvent models, and support for multi-scale
          modeling.
        </v-card-text>
      </v-card>
      <v-card href="https://foldingathome.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Folding@home</v-card-title>
        <v-card-text>
          A distributed computing project for simulating protein dynamics, including the process of protein folding and the movements of proteins implicated in a variety of diseases.
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
      <v-card href="https://github.com/pandegroup/pdbfixer/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>PDBFixer</v-card-title>
        <v-card-text>
          A powerful, flexible tool for preparing PDB files for molecular simulation or modeling, capable of running in interactive, Python-scriptable, or fully automated modes.
        </v-card-text>
      </v-card>
      <v-card href="https://siremol.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>SireMol</v-card-title>
        <v-card-text>
          An advanced, multiscale, molecular simulation framework. It allows
          to quickly prototype and develop new algorithms.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/TinkerTools/Tinker" target="blank" class="ma-4" width="300" hover>
        <v-card-title>TINKER</v-card-title>
        <v-card-text>
          A high-performance molecular modeling and simulation platform.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/ADicksonLab/wepy" target="blank" class="ma-4" width="300" hover>
        <v-card-title>wepy</v-card-title>
        <v-card-text>
          A Weighted Ensemble (WE) simulation framework in Python with first class support for OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="http://getyank.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>YANK</v-card-title>
        <v-card-text>
          A GPU-accelerated Python framework for exploring algorithms for alchemical free energy calculations.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>OpenMM Plugins</v-card-title>
        <v-card-text>
          Expand OpenMM capabilities by interfacing with other software. The plugins are developed
          and released independetly from OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://github.com/openmm/openmm-torch/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-Torch</v-card-title>
        <v-card-text>
          A plugin for OpenMM that allows PyTorch models to be used for defining an OpenMM force object.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-plumed/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-PLUMED</v-card-title>
        <v-card-text>
          Provides a connection between OpenMM and PLUMED. It allows you to bias or analyze an OpenMM simulation based on collective variables.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/amd/openmm-hip" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-HIP</v-card-title>
        <v-card-text>
          A high performance OpenMM platform for AMD GPUs.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-tensorflow/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-TensorFlow</v-card-title>
        <v-card-text>
          This is a plugin for OpenMM that allows neural networks to be used for defining forces. It is implemented with TensorFlow.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-tensorrt/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-TensorRT</v-card-title>
        <v-card-text>
          This is a plugin for OpenMM that allows neural networks to be used for defining forces. It is implemented with TensorRT.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>OpenMM Tools</v-card-title>
        <v-card-text>
          Resources that make it easier to use OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://openmmtools.readthedocs.io/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMMTools</v-card-title>
        <v-card-text>
          Integrators, enhanced sampling methods, test systems, and alchemical factories for OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm-setup" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM Setup</v-card-title>
        <v-card-text>
          A graphical application to set up and run simulations with OpenMM. Includes pull-down menus, pop-up tips, error checking, and live script building
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/leeping/OpenMM-MD/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>OpenMM-MD</v-card-title>
        <v-card-text>
           A general purpose script (with lots of comments) that uses the OpenMM Python module to drive MD simulations. Simulation options are handled via an input file.
        </v-card-text>
      </v-card>
      <v-card href="https://simtk.org/svn/pyopenmm/trunk/simtk/pyopenmm/extras/optimizepme.py" target="blank" class="ma-4" width="300" hover>
        <v-card-title>PME Optimizer</v-card-title>
        <v-card-text>
          A script to optimize the performance of PME. It runs a series of simulations and selects the parameters that give best performance for simulating a particular system on particular hardware.
        </v-card-text>
      </v-card>
    </v-container>
  </div>
</template>