<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>Getting Started</v-card-title>
        <v-card-text>
           The easiest way to get started is to familiarize yourself with the User Guide, which contains basics about installing OpenMM, making sure that it runs smoothly, and running a couple of example simulations.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="http://docs.openmm.org/latest/userguide/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>User Guide</v-card-title>
        <v-card-text>
          Start here if it's your first time using OpenMM. These documents will get you up and running simulations in short order.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/developerguide/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Developer Guide</v-card-title>
        <v-card-text>
          This section provides in-depth information on the code-base and how to contribute to the development of OpenMM itself.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/api-python/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Python API</v-card-title>
        <v-card-text>
          The Python API provides information about the classes and methods available to Python developers.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/api-c++/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>C++ API</v-card-title>
        <v-card-text>
          The C++ API provides information about OpenMM's C++ interface.
        </v-card-text>
      </v-card>
      <v-card href="https://openmm.github.io/openmm-cookbook/latest/cookbook" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Cookbook</v-card-title>
        <v-card-text>
          Short examples demonstrating many common operations in OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="https://openmm.github.io/openmm-cookbook/latest/tutorials" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Tutorials</v-card-title>
        <v-card-text>
          Tutorials for getting started with and exploring OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm/wiki/Frequently-Asked-Questions" target="blank" class="ma-4" width="300" hover>
        <v-card-title>FAQ</v-card-title>
        <v-card-text>
          Frequently asked questions about OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Workshop Videos</v-card-title>
        <v-card-text>
           Every year, we hold several OpenMM workshops at Stanford University. After you have successfully installed OpenMM, here are some introductory videos from previous workshops.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card class="ma-4" width="300">
        <v-card-title>OpenMM Workshop 2012</v-card-title>
        <v-card-text>
          <div class="video-container">
            <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/videoseries?list=PLGL4XGw8noUxYZ-JrAob4hpVGCAhKGesk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          </div>
        </v-card-text>
      </v-card>
      <v-card class="ma-4" width="300">
        <v-card-title>OpenMM Workshop 2013</v-card-title>
        <v-card-text>
          <div class="video-container">
            <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/videoseries?list=PLGL4XGw8noUzNX6x0Lko2-1juuy7cm8xO" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          </div>
        </v-card-text>
      </v-card>
      <v-card class="ma-4" width="300">
        <v-card-title>OpenMM Workshop 2014</v-card-title>
        <v-card-text>
          <div class="video-container">
            <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/videoseries?list=PLGL4XGw8noUwrh16gsC9H_D03fED3IcHo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          </div>
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Support</v-card-title>
        <v-card-text>
          For bug reports, feature requests, specific questions, etc.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://github.com/openmm/openmm/issues" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Issue Tracker</v-card-title>
        <v-card-text>
          Report bugs and request features. Please describe clearly what you want to achieve.
        </v-card-text>
      </v-card>
      <v-card href="https://simtk.org/forums/viewforum.php?f=161" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Forum (old)</v-card-title>
        <v-card-text>
          General discussion how to use OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="http://wiki.simtk.org/openmm/Hardware" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Hardware (old)</v-card-title>
        <v-card-text>
          Hardware requiment and recommendations for OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Publications</v-card-title>
        <v-card-text>
          If you use OpenMM for scientific research, please cite it.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://doi.org/10.1021/acs.jpcb.3c06662" target="blank" class="ma-4" hover>
        <v-card-text>
          Peter Eastman, Raimondas Galvelis, Raúl P. Peláez, Charlles R. A. Abreu, Stephen E. Farr, Emilio Gallicchio, Anton Gorenko, Michael M. Henry, Frank Hu, Jing Huang, Andreas Krämer, Julien Michel, Joshua A. Mitchell, Vijay S. Pande, João PGLM Rodrigues, Jaime Rodriguez-Guerra, Andrew C. Simmonett, Sukrit Singh, Jason Swails, Philip Turner, Yuanqing Wang, Ivy Zhang, John D. Chodera, Gianni De Fabritiis, and Thomas E. Markland. "OpenMM 8: Molecular Dynamics Simulation with Machine Learning Potentials." J. Phys. Chem. B 128(1), pp. 109-116 (2023). DOI: <a href="https://doi.org/10.1021/acs.jpcb.3c06662" target="blank">10.1021/acs.jpcb.3c06662</a>
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex justify-center">
      <v-btn href="https://simtk.org/plugins/publications/index.php/?group_id=161" target="blank">More publications</v-btn>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Bleeding Edge</v-card-title>
        <v-card-text>
           Visit the <a href="https://github.com/openmm/openmm">OpenMM repository</a> at GitHub to stay up to date with the latest development.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="http://docs.openmm.org/development/userguide/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>User Guide (dev)</v-card-title>
        <v-card-text>
          Start here if it's your first time using OpenMM. These documents will get you up and running simulations in short order.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/development/developerguide/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Developer Guide (dev)</v-card-title>
        <v-card-text>
          This section provides in-depth information on the code-base and how to contribute to the development of OpenMM itself.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/development/api-python/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Python API (dev)</v-card-title>
        <v-card-text>
          The Python API provides information about the classes and methods available to Python developers.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/development/api-c++/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>C++ API (dev)</v-card-title>
        <v-card-text>
          The C++ API provides information about OpenMM's C++ interface.
        </v-card-text>
      </v-card>

      <v-card href="https://openmm.github.io/openmm-cookbook/dev/cookbook" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Cookbook (dev)</v-card-title>
        <v-card-text>
          Short examples demonstrating many common operations in OpenMM.
        </v-card-text>
      </v-card>
      <v-card href="https://openmm.github.io/openmm-cookbook/dev/tutorials" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Tutorials (dev)</v-card-title>
        <v-card-text>
          Tutorials for getting started with and exploring OpenMM.
        </v-card-text>
    </v-container>
  </div>
</template>

<style scoped>
  .video-container {
    position:relative;
    padding-bottom:56.25%;
    padding-top:30px;
    height:0;
    overflow:hidden;
  }

  .video-container iframe, .video-container object, .video-container embed {
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
  }
</style>