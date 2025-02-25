<template>
  <div>
    <v-container class="d-flex justify-center">
      <bsky-embed username="openmm.org" limit="5" load-more="true"></bsky-embed>
    </v-container>
    <v-container class="d-flex justify-center">
      <v-btn href="https://bsky.app/profile/openmm.org" target="blank">Read posts on Bluesky</v-btn>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  mounted: function() {
    const script = document.createElement('script');
    script.src = 'https://cdn.jsdelivr.net/npm/bsky-embed@0.2.3/dist/bsky-embed.es.min.js';
    this.$el.appendChild(script)
  }  
}
</script>
