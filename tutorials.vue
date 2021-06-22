<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>OpenMM Cookbook and Tutorials</v-card-title>
        <v-card-text>
          Tutorials and examples for quickly getting started with OpenMM
        </v-card-text>
      </v-card>
    </v-container>
    <v-container>
      <v-expansion-panels focusable>
        <v-expansion-panel v-for="tutorial in tutorials" :key="tutorial">
          <v-expansion-panel-header>{{ tutorial.title }}</v-expansion-panel-header>
          <v-expansion-panel-content>
            <tutorial :path="tutorial.path" />
          </v-expansion-panel-content>
        </v-expansion-panel>
      </v-expansion-panels>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  data: function() {
    return {
      tutorials: [
        {
          title: 'Alchemical free energy calculations',
          path: 'tutorials/alchemical-free-energy/'
        },
        {
          title: 'Beta-2-adrenergic receptor (B2AR) membrane protein simulation with CHARMM',
          path: 'tutorials/b2ar_membrane/'
        },
        {
          title: 'Histone methyltransferase simulation with multisite Zn2+ structural ions',
          path: 'tutorials/hkmt_zinc/'
        },
        {
          title: 'Histone methyltransferase simulation with a multisite water model (TIP4P-Ew)',
          path: 'tutorials/hkmt_tip4pew/',
        },
        {
          title: 'HSP90 with ADP:Mg2+ simulation',
          path: 'tutorials/hsp90_adp_mg/'
        },
      ]
    }
  },
  components: {
    'tutorial': httpVueLoader('tutorial.vue')
  },
}
</script>