<template>
  <v-container class="d-flex justify-center">
    <v-card>
      <v-card-title>Simulation speed</v-card-title>
      <v-card-text id="speed"></v-card-text>
    </v-card>
  </v-container>
</template>

<script>
module.exports = {
  created: function(event) {
    google.charts.load('current', {packages: ['corechart', 'bar']});
    google.charts.setOnLoadCallback( () => {
      const data = google.visualization.arrayToDataTable([
        ['Simulation type', 'CUDA (Titan X Pascal)', 'CUDA (Titan V)', 'CPU (Core i7-7740X)'],
        ['Implicit, 2 fs'        ,  927, 1004,  9.4],
        ['Implicit, 5 fs HMR'    , 1528, 1437, 23.2],
        ['Explicit-RF, 2 fs'     ,  626,  697, 20.2],
        ['Explicit-RF, 5 fs HMR' , 1118, 1071, 45.6],
        ['Explicit-PME, 2 fs'    ,  393,  419, 16.5],
        ['Explicit-PME, 5 fs HMR',  752,  785, 37.9]
      ]);

      const options = {
        width: 800,
        height: 500,
        title: 'Simulation speed',
        titleTextStyle: {
            fontSize: 18,
            bold: true,
            color: '#4d4d4d'
        },
        chartArea: {width: '55%'},
        hAxis: {
          title: 'Speed (ns/day)',
          minValue: 0,
          maxValue: 1600, 
          textStyle: { bold: true, fontSize: 14, color: '#4d4d4d' },
          titleTextStyle: { bold: true, fontSize: 16, color: '#4d4d4d'
          }
        },
        vAxis: {
          title: 'Type',
          textStyle: { fontSize: 14, bold: true, color: '#4d4d4d'},
          titleTextStyle: { bold: true, fontSize: 16, color: '#4d4d4d'}
        },
        legend: {
          title: 'Hardware'
        }
      };
      const chart = new google.visualization.BarChart(document.getElementById('speed'));
      chart.draw(data, options)
    });
  }
}
</script>