<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>OpenMM Team</v-card-title>
        <v-card-text>
          Researchers and developers actively working on OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://web.stanford.edu/group/markland/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Markland Lab</v-card-title>
        <v-card-text>
          <ul>
            <li><a href="https://web.stanford.edu/group/markland/about.html" target="blank">Tom Markland</a></li>
            <li><a href="https://simtk.org/users/peastman" target="blank">Peter Eastman</a></li>
          </ul>
        </v-card-text>
      </v-card>
      <v-card href="https://www.choderalab.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Chodera Lab</v-card-title>
        <v-card-text>
          <ul>
            <li><a href="https://www.choderalab.org/members#john-chodera" target="blank">John Chodera</a></li>
            <li><a href="https://www.choderalab.org/members#jaime-rodriguez-guerra" target="blank">Jaime Rodriguez-Guerra</a></li>
          </ul>
        </v-card-text>
      </v-card>
      <v-card href="https://www.compscience.org/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>de Fabritiis Lab</v-card-title>
        <v-card-text>
          <ul>
            <li><a href="https://www.icrea.cat/Web/ScientificStaff/gianni-de-fabritiis-582" target="blank">Gianni de Fabritiis</a></li>
            <li><a href="https://www.linkedin.com/in/galvelis/" target="blank">Raimondas Galvelis</a></li>
          </ul>
        </v-card-text>
      </v-card>
      <v-card href="https://www.lobos.nih.gov/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>NIH</v-card-title>
        <v-card-text>
          <ul>
            <li><a href="https://www.lobos.nih.gov/cbs/bbrooks.shtml" target="blank">Bernard Brooks</a></li>
            <li><a href="https://scholar.google.com/citations?user=nucvqKoAAAAJ&hl=en" target="blank">Andrew Simmonett</a></li>
          </ul>
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>Funding Sources</v-card-title>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card href="https://chanzuckerberg.com/eoss/proposals/openmm-key-infrastructure-for-biomolecular-modeling-and-simulation/" target="blank" class="ma-2" width="300" hover>
        <v-card-title>Chan Zuckerberg Initiative</v-card-title>
        <v-card-text>
          OpenMM was supported (May 2020 - Apr 2021) by the CZI Essential Open Source Software for Science grant.
        </v-card-text>
      </v-card>
      <v-card class="ma-2" width="300">
        <v-card-title>National Institutes of Health</v-card-title>
        <v-card-text>
        OpenMM is currently (July 2021 - Mar 2025) supported by the <a href="https://www.nigms.nih.gov/" target="blank">National Institute of General Medical Sciences</a> of the <a href="https://www.nih.gov/" target="blank">National Institutes of Health</a> under award number <a href="https://reporter.nih.gov/search/XnJncpjxUkSKiIFzf9su9A/project-details/10100573" target="blank">R01GM140090</a>.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-card flat>
        <v-card-title>OpenMM Consortium</v-card-title>
        <v-card-text>
          A community of researchers and developers supporting OpenMM.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-wrap justify-center">
      <v-card v-for="person of people" :key="person" class="ma-2" width="300" hover>
        <v-card-text>{{ person }}</v-card-text>
      </v-card>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  data: function() { return {
    people: [
      'John Chodera (MSKCC)',
      'Karmen Condic-Jurkic (MSKCC)',
      'Peter Eastman (Stanford)',
      'Gianni de Fabritiis (Pompeu Fabra)',
      'Emilio Gallicchio (Brooklyn College)',
      'Tom Markland (Stanford)',
      'Justin McCallum (UCalgary)',
      'Antonia Mey (Edinburgh)',
      'Julien Michel (Edinburgh)',
      'Vijay Pande (Stanford)',
      'Jean-Philip Piquemal (Sorbonne)',
      'Jay Ponder (WashU)',
      'Josh Rackers (Sandia)',
      'Pengyu Ren (UT Austin)',
      'Julia Rice (IBM)',
      'Andy Simmonett (NIH)',
      'Bill Swope (IBM)',
    ]
  }}
}
</script>