<template>
  <v-container>
  </v-container>
</template>

<script>
module.exports = {
  props: ['src'],
  mounted: function() {
    fetch(this.src).then((res) => {
      res.text().then((str) => {
        this.$el.innerHTML = marked(str)
      })
    })
  }
}
</script>