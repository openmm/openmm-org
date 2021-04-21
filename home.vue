<template>
  <div>
    <v-container class="d-flex flex-column align-center">
      <v-card class="py-12" width="600" flat>
        <v-carousel width="600" height="375" cycle interval="5000" @change="changeSlideColor()">
          <v-carousel-slide title="Custom Forces" :color="slideColor">
            Want a custom force between two atoms? No problem. Write your force expressions in string format, and OpenMM will generate blazing fast code to do just that. No more hand-writing GPU kernels.
          </v-carousel-slide>
          <v-carousel-slide title="Highly Optimized" :color="slideColor">
            OpenMM is optimized for the latest generation of compute hardware, including AMD (via OpenCL) and NVIDIA (via CUDA) GPUs. We also heavily optimize for CPUs using intrinsics.
          </v-carousel-slide>
          <v-carousel-slide title="Portable" :color="slideColor">
            We strive to make our binaries as portable as possible. We've tested OpenMM on many flavors of Linux, OS X, and even Windows.
          </v-carousel-slide>
          <v-carousel-slide title="Easy Installation" :color="slideColor">
            Install OpenMM and all its dependencies with Conda package manager. No manual compilation
            from source required. 
          </v-carousel-slide>
        </v-carousel>
      </v-card>
      <v-card width="800" flat>
        <v-card-title>Quick Start</v-card-title>
        <v-expansion-panels focusable>
          <v-expansion-panel>
            <v-expansion-panel-header class="text-h6">
              Watch an intoduction video
            </v-expansion-panel-header>
            <v-expansion-panel-content>
              <v-container class="d-flex justify-center mt-4" flat>
                <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/AlWsbbdUNC0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              </v-container>
            </v-expansion-panel-content>
          </v-expansion-panel>
          <v-expansion-panel>
            <v-expansion-panel-header class="text-h6">
              Install OpenMM on your machine
            </v-expansion-panel-header>
            <v-expansion-panel-content>
             <v-container class="d-flex justify-center">
                <v-card flat>
                  <v-card-text class="text--primary">
                    OpenMM can be easily installed with Conda package manager.
                    Packages are available for Linux, MacOS, and Windows.
                    A command for a quick installation:
                    <highlightjs class="py-2" language='bash' code="$ conda install -c conda-forge openmm"></highlightjs>
                    More details are available in the <a href="http://docs.openmm.org/latest/userguide/application.html#installing-openmm" target="blank">documentation</a>.
                  </v-card-text>
                </v-card>
              </v-container>
            </v-expansion-panel-content>
          </v-expansion-panel>
          <v-expansion-panel>
            <v-expansion-panel-header class="text-h6">
              Try a simple Python script
            </v-expansion-panel-header>
            <v-expansion-panel-content>
              <v-container class="d-flex justify-center">
                <v-card flat>
                  <v-card-text class="text--primary">
                    <highlightjs language='python' :code="example"></highlightjs>
                  </v-card-text>
                </v-card>
              </v-container>
            </v-expansion-panel-content>
          </v-expansion-panel>
        </v-expansion-panels>
      </v-card>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  components: {
    'v-carousel-slide': httpVueLoader('slide.vue')
  },
  data: function() { return { 
    example: '',
    slideColor: '',
    slideColorIndex: 0
  }},
  created: function() {
    fetch('example.py').then(res => res.text().then(str => this.example = str))
  },
  methods: {
    changeSlideColor: function() {
      const colors = ['deep-orange', 'light-green', 'light-blue', 'amber']
      const offset = Math.floor(Math.random() * (colors.length - 1)) + 1
      this.slideColorIndex = (this.slideColorIndex + offset) % colors.length
      this.slideColor = colors[this.slideColorIndex]
    }
  }
}
</script>