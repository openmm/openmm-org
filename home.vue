<template>
  <div>
    <v-container class="d-flex flex-column align-center">
      <v-card class="my-12" width="600" flat>
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
      <v-btn class="mt-6" href="https://colab.research.google.com/gist/raimis/1c83c413197410675e2c4271d9003f91" target="blank">
        <v-icon left >mdi-play-circle-outline</v-icon>
        Run in Colab
      </v-btn>
      <v-card class="my-6" width="1000">
        <div id="tutorial-temporary"></div>
        <iframe id="tutorial" class="mb-n2" frameborder="0" width="100%" height="6010" src=""></iframe>
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
    slideColor: '',
    slideColorIndex: 0,
    tutorialURL: 'https://gist.github.com/raimis/1c83c413197410675e2c4271d9003f91'
  }},
  mounted: function() {
    postscribe('#tutorial-temporary', `<script src="${this.tutorialURL}.js"><\/script>`, {
      done: () => {
        let src = document.getElementsByClassName('render-viewer')[0].src
        document.getElementById('tutorial').src = src
        document.getElementById('tutorial-temporary').remove()
        }
    })
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