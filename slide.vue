<template>
  <v-carousel-item>
    <v-sheet class="d-flex flex-column justify-center align-center px-16" height="100%" :color="color">
      <span class="text-h6">{{ title }}</span>
      <span class="text-center"><slot/></span>
    </v-sheet>
  </v-carousel-item>
</template>

<script>
module.exports = {
  props: ['title', 'color']
}
</script>