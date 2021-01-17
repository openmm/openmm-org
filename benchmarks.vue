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
    google.charts.load('current', { packages: ['corechart', 'bar'] });
    const options = {
      width: 800,
      height: 500,
      chartArea: { width: '50%' },
      hAxis: {
        title: 'Simulation speed (ns/day)',
        textStyle: { fontSize: 14, color: '#616161' },
        titleTextStyle: { bold: true, italic: false, fontSize: 14, color: '#616161' }
      },
      vAxis: {
        title: 'Simulation type',
        textStyle: { fontSize: 14, color: '#616161' },
        titleTextStyle: { bold: true, italic: false, fontSize: 14, color: '#616161' }
      },
      legend: {
        title: 'Hardware',
        textStyle: { fontSize: 14, color: '#616161' }
      }
    };
    google.charts.setOnLoadCallback(() => {
      fetch('benchmarks.json').then(res => {
        res.json().then(json => {
          const chart = new google.visualization.BarChart(document.getElementById('speed'));
          const data = google.visualization.arrayToDataTable(json['speed']);
          chart.draw(data, options)
        })
      })
    })
  }
}
</script>