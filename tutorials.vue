<template>
  <v-container>
    <tutorial src="tutorials/index.md"></tutorial>
    <v-expansion-panels focusable>
      <v-expansion-panel v-for="tutorial in tutorials" :key="tutorial">
        <v-expansion-panel-header>{{ tutorial.title }}</v-expansion-panel-header>
        <v-expansion-panel-content>
          <tutorial :src="tutorial.src"/>
        </v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>
  </v-container>
</template>

<script>
module.exports = {
  data: function() {
    return {
      tutorials: [
        {
          title: 'Alchemical free energy calculations',
          src: 'tutorials/alchemical-free-energy/index.md'
        },
        {
          title: 'Beta-2-adrenergic receptor (B2AR) membrane protein simulation with CHARMM',
          src: 'tutorials/b2ar_membrane/index.md'
        },
        {
          title: 'Histone methyltransferase simulation with multisite Zn2+ structural ions',
          src: 'tutorials/hkmt_zinc/index.md'
        },
        {
          title: 'Histone methyltransferase simulation with a multisite water model (TIP4P-Ew)',
          src: 'tutorials/hkmt_tip4pew/index.md'
        },
        {
          title: 'HSP90 with multisite Hg2+',
          src: 'tutorials/hsp90_adp_mg/index.md'
        },
      ]
    }
  },
  components: {
    'tutorial': httpVueLoader('tutorial.vue')
  },
}
</script>