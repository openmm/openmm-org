<template>
  <div>
    <v-container class="d-flex justify-center">
      <a class="twitter-timeline" href="https://twitter.com/openmm_toolkit?ref_src=twsrc%5Etfw" width="600"></a>
    </v-container>
    <v-container class="d-flex justify-center">
      <v-btn href="https://twitter.com/openmm_toolkit?ref_src=twsrc%5Etfw" target="blank">Read Tweets</v-btn>
    </v-container>
  </div>
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