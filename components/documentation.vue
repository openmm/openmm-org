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
      <v-card href="https://github.com/openmm/openmm/discussions" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Forum</v-card-title>
        <v-card-text>
          General discussion on using and developing OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Workshop Videos</v-card-title>
        <v-card-text>
           After you have successfully installed OpenMM, here are some introductory videos from previous OpenMM workshops held at Stanford University.
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
        <v-card-title>Publications</v-card-title>
        <v-card-text>
          If you use OpenMM for scientific research, please cite it.
        </v-card-text>
      </v-card>
      <v-card flat>
        <v-card-text>
          <b>Primary Publication:</b>
          <ul>
            <li>Peter Eastman, Raimondas Galvelis, Raúl P. Peláez, Charlles R. A. Abreu, Stephen E. Farr, Emilio Gallicchio, Anton Gorenko, Michael M. Henry, Frank Hu, Jing Huang, Andreas Krämer, Julien Michel, Joshua A. Mitchell, Vijay S. Pande, João PGLM Rodrigues, Jaime Rodriguez-Guerra, Andrew C. Simmonett, Sukrit Singh, Jason Swails, Philip Turner, Yuanqing Wang, Ivy Zhang, John D. Chodera, Gianni De Fabritiis, and Thomas E. Markland. "OpenMM 8: Molecular Dynamics Simulation with Machine Learning Potentials." J. Phys. Chem. B 128(1), pp. 109-116 (2023). DOI: <a href="https://doi.org/10.1021/acs.jpcb.3c06662" target="blank">10.1021/acs.jpcb.3c06662</a></li>
          </ul>
        </v-card-text>
      </v-card>
      <v-expand-transition>
        <v-card v-show="expand_publications" flat>
          <v-card-text>
            <b>Additional Publications:</b>
            <ul>
              <li>Peter Eastman, Jason Swails, John D. Chodera, Robert T. McGibbon, Yutong Zhao, Kyle A. Beauchamp, Lee-Ping Wang, Andrew C. Simmonett, Matthew P. Harrigan, Chaya D. Stern, Rafal P. Wiewiora, Bernard R. Brooks, and Vijay S. Pande. "OpenMM 7: Rapid development of high performance algorithms for molecular dynamics." PLOS Comput. Biol. 13(7): e1005659 (2017). DOI: <a href="https://doi.org/10.1371/journal.pcbi.1005659" target="blank">10.1371/journal.pcbi.1005659</a></li>
              <li>Peter Eastman, Mark S. Friedrichs, John D. Chodera, Randall J. Radmer, Christopher M. Bruns, Joy P. Ku, Kyle A. Beauchamp, Thomas J. Lane, Lee-Ping Wang, Diwakar Shukla, Tony Tye, Mike Houston, Timo Stich, Christoph Klein, Michael R. Shirts, and Vijay S. Pande. "OpenMM 4: A Reusable, Extensible, Hardware Independent Library for High Performance Molecular Simulation." J. Chem. Theory Comput. 9(1):461-469 (2013). DOI: <a href="https://doi.org/10.1021/ct300857j" target="blank">10.1021/ct300857j</a></li>
              <li>Peter Eastman and Vijay S. Pande. "OpenMM: A Hardware-Independent Framework for Molecular Simulations." Comput. Sci. Eng., 12:34-39 (2010).  DOI: <a href="https://doi.org/10.1109/MCSE.2010.27" target="blank">10.1109/MCSE.2010.27</a></li>
              <li>Peter Eastman and Vijay S. Pande. "Efficient Nonbonded Interactions for Molecular Dynamics on a Graphics Processing Unit." J. Comput. Chem. 31:1268-72 (2010). DOI: <a href="https://doi.org/10.1002/jcc.21413" target="blank">10.1002/jcc.21413</a></li>
              <li>Peter Eastman and Vijay S. Pande. "Constant Constraint Matrix Approximation: A Robust, Parallelizable Constraint Method for Molecular Simulations." J. Chem. Theory Comput. 6:434-437 (2010). DOI: <a href="https://doi.org/10.1021/ct900463w" target="blank">10.1021/ct900463w</a></li>
              <li>Mark S. Friedrichs, Peter Eastman, Vishal Vaidyanathan, Mike Houston, Scott Legrand, Adam L. Beberg, Daniel L. Ensign, Christopher M. Bruns, Vijay S. Pande. "Accelerating Molecular Dynamic Simulation on Graphics Processing Units." J. Comput. Chem., 30(6):864-872 (2009). DOI: <a href="https://doi.org/10.1002/jcc.21209" target="blank">10.1002/jcc.21209</a></li>
            </ul>
          </v-card-text>
        </v-card>
      </v-expand-transition>
    </v-container>
    <v-container class="d-flex justify-center">
      <v-btn @click="expand_publications = !expand_publications">{{ expand_publications_text }}</v-btn>
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

<script>
module.exports = {
  data: function() {
    return {
      expand_publications: false
    };
  },
  computed: {
    expand_publications_text: function() {
      return this.expand_publications ? "Hide Additional Publications" : "Show Additional Publications";
    }
  }
}
</script>
