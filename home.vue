<template>
  <v-container class="d-flex flex-column align-center">
    <v-card flat>
      <v-card-title>Introduction to OpenMM</v-card-title>
      <v-card-text>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/AlWsbbdUNC0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </v-card-text>
      <v-card-actions>
        <v-btn>More videos</v-btn>
      </v-card-actions>
    </v-card>
    <v-card flat>
      <v-card-title>Use OpenMM from Python</v-card-title>
      <v-card-text class="text--primary">
        <highlightjs language='python' :code="example"></highlightjs>
      </v-card-text>
      <v-card-actions>
        <v-btn>Script builder</v-btn>
      </v-card-actions>
    </v-card>
  </v-container>
</template>

<script>
module.exports = {
  data: function() { return { example: '' } },
  created: function() {
    fetch('example.py').then(res => res.text().then(str => this.example = str))
  }
}
</script>