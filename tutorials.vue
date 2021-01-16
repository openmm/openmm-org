<template>
  <v-container>
  </v-container>
</template>

<script>
module.exports = {
  mounted: function() {
    fetch('tutorials/alchemical-free-energy/index.md').then((res) => {
      res.text().then((str) => {
        const el = document.createElement('div');
        el.innerHTML = marked(str)
        this.$el.appendChild(el);
      })
    })
  }
}
</script>