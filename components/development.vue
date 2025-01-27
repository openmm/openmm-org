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
            <li><a href="https://github.com/epretti" target="blank">Evan Pretti</a></li>
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
        <v-card-title>De Fabritiis Lab</v-card-title>
        <v-card-text>
          <ul>
            <li><a href="https://www.icrea.cat/Web/ScientificStaff/gianni-de-fabritiis-582" target="blank">Gianni De Fabritiis</a></li>
          </ul>
        </v-card-text>
      </v-card>
      <v-card href="https://www.julienmichel.net/" target="blank" class="ma-4" width="300" hover>
        <v-card-title>Michel Lab</v-card-title>
        <v-card-text>
          <ul>
            <li><a href="https://www.julienmichel.net/lab/julien" target="blank">Julien Michel</a></li>
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
      <v-card target="blank" class="ma-2" width="300">
        <v-card-title>EPSRC</v-card-title>
        <v-card-text>
          OpenMM is currently (November 2022 - October 2025) supported by the <a href="https://www.ukri.org/councils/epsrc/" target="blank">Engineering and Physical Sciences Research Council</a> under grant <a href="https://gow.epsrc.ukri.org/NGBOViewGrant.aspx?GrantRef=EP/W030276/1" target="blank">EP/W030276/1</a>.
        </v-card-text>
      </v-card>
      <v-card class="ma-2" width="300">
        <v-card-title>Wellcome Trust</v-card-title>
        <v-card-text>
        OpenMM is currently (January 2025 - December 2026) supported by the <a href="https://wellcome.org/" target="blank">Wellcome Trust</a>.
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
      <v-card v-for="person of people.consortium" :key="person" :href="person.url" target="blank" class="ma-2" width="300" hover>
        <v-card-text>{{ person.name }}</v-card-text>
      </v-card>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  data: function() { return {
    people: []
  }},
  created: function() {
    fetch('data/people.json').then(res => res.json()).then(people => this.people = people)
  }
}
</script>
