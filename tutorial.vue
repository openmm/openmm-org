<template>
  <v-container>
  </v-container>
</template>

<script>
module.exports = {
  props: ['path'],
  mounted: function() {
    fetch(this.path + 'index.md').then((res) => {
      res.text().then((str) => {
        this.$el.innerHTML = marked(str, { baseUrl: this.path })
      })
    })
  }
}
</script>