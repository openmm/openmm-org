<template>
  <div>
    <v-container class="d-flex flex-column align-center">
      <v-card width="600" flat>
        <v-card-title>Key Features</v-card-title>
        <v-carousel width="600" height="375" cycle interval="3000">
          <v-carousel-item>
            <v-sheet class="d-flex justify-center align-center text-h6" justify-center color="red lighten-1" height="100%" align="center">
              Feature 1
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet class="d-flex justify-center align-center text-h6" justify-center color="light-green" height="100%" align="center">
              Feature 2
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet class="d-flex justify-center align-center text-h6" color="light-blue" height="100%" align="center">
              Feature 3
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet class="d-flex justify-center align-center text-h6" color="amber" height="100%" align="center">
              Feature 4
            </v-sheet>
          </v-carousel-item>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/AlWsbbdUNC0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                    OpenMM can be easily installed Conda package manager. Packages are available for Linux, MacOS, and Windows.
                    <highlightjs language='bash' code="$ conda install -c conda-forge openmm"></highlightjs>
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
                  <v-card-actions>
                    <v-btn>Script builder</v-btn>
                  </v-card-actions>
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
  data: function() { return { example: '' } },
  created: function() {
    fetch('example.py').then(res => res.text().then(str => this.example = str))
  }
}
</script>