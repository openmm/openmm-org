<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>Welcome to OpenMM</v-card-title>
        <v-card-text>
          A high-performance toolkit for molecular simulation.
          Use it as an application, a library, or a flexible programming environment.
          We include extensive language bindings for Python, C, C++, and even Fortran.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card v-on:click="$router.push('/benchmarks')" class="ma-4" width="300" hover>
        <v-card-title>Highly Optimized</v-card-title>
        <v-card-text>
          Optimized for the latest generation of compute hardware, including NVIDIA, AMD, and Intel GPUs. We also heavily optimize for CPUs.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/userguide/theory.html#custom-forces" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Custom Forces</v-card-title>
        <v-card-text>
          Want a custom force between atoms? Write your force expression as a string and OpenMM will generate blazing fast code to compute it.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/userguide/application.html#the-openmm-setup-application" target="blank" class="ma-4" width="300" hover>
        <v-card-title>User Friendly</v-card-title>
        <v-card-text>
          OpenMM-Setup provides a simple UI to prepare input files, configure options, and run simulations.
        </v-card-text>
      </v-card>
      <v-card href="https://github.com/openmm/openmm" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Open Source</v-card-title>
        <v-card-text>
          OpenMM is an open source project, distributed under the permissive MIT and LGPL licenses.
          The source code is available on GitHub.
        </v-card-text>
      </v-card>
      <v-card href="http://docs.openmm.org/latest/userguide/application.html#installing-openmm" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Easy Installation</v-card-title>
        <v-card-text>
          OpenMM can be easily installed with the Conda package manager:
          <highlightjs class="text--primary py-2" language='bash' code="conda install -c conda-forge openmm"></highlightjs>
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>The Power of Python Scripting</v-card-title>
        <v-card-text>
          Use Python scripting to create your own simulation protocols in just a few lines of code.
          <highlightjs class="text--primary my-4" language='python' :code="example"/>
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
    fetch('data/example.py').then(res => res.text().then(str => this.example = str))
  }
}
</script>
