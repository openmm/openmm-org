<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>Welcome to OpenMM</v-card-title>
        <v-card-text>
          A high-performance toolkit for molecular simulation. Use it as a library or as an application. We include extensive language bindings for Python, C, C++, and even Fortran. The code is open source and developed on GitHub, licensed under MIT and LGPL.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card v-on:click="httpVueLoader('benchmarks.vue')" class="ma-4" width="300" hover>
        <v-card-title>Highly Optimized</v-card-title>
        <v-card-text>
          OpenMM is optimized for the latest generation of compute hardware, including NVIDIA, AMD, and Intel GPUs. We also heavily optimize for CPUs using intrinsics.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/userguide/application.html#installing-openmm" class="ma-4" width="300" hover>
        <v-card-title>Easy Installation</v-card-title>
        <v-card-text>
          Install OpenMM and all its dependencies with the Conda package manager. No manual compilation from source required. 
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/userguide/theory.html#custom-forces" class="ma-4" width="300" hover>
        <v-card-title>Custom Forces</v-card-title>
        <v-card-text>
          Want a custom force between two atoms? No problem. Write your force expressions in string format, and OpenMM will generate blazing fast code to do just that. No more hand-writing GPU kernels.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/userguide/application.html#the-openmm-setup-application" class="ma-4" width="300" hover>
        <v-card-title>User Friendly</v-card-title>
        <v-card-text>
          OpenMM-Setup provides a simple UI to prepare input files, configure options, and run simulations.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Installation</v-card-title>
        <v-card-text>
          OpenMM can be easily installed with Conda package manager:
          <highlightjs class="py-4" language='bash' code="$ conda install -c conda-forge openmm"></highlightjs>
          More details are available in the <a href="http://docs.openmm.org/latest/userguide/application.html#installing-openmm" target="blank">documentaion</a>.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Example Python Script</v-card-title>
        <v-card-text class="text--primary">
          Use Python scripting to create your own simulation protocols in just a few lines of code.
          <highlightjs class="my-4" language='python' :code="example"/>
        </v-card-text>
      </v-card>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  data: function() { return { 
    example: ''
  }},
  created: function() {
    fetch('example.py').then(res => res.text().then(str => this.example = str))
  }
}
</script>
