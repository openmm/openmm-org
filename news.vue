<template>
  <v-container class="d-flex justify-center">
    <a class="twitter-timeline" href="https://twitter.com/openmm_toolkit?ref_src=twsrc%5Etfw" width="600">Tweets by openmm_toolkit</a>
  </v-container>
</template>

<script>
module.exports = {
  mounted: function() {
    const script = document.createElement('script');
    script.src = 'https://platform.twitter.com/widgets.js';
    this.$el.appendChild(script)
  }  
}
</script>