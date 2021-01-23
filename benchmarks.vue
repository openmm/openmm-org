<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>Simulation speed</v-card-title>
        <v-card-text>
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-column align-center">
      <v-card>
        <v-card-title>Dihydrofolate Reductase (DHFR)</v-card-title>
        <v-card-text class="text-justify">
          OpenMM was benchmarked on the dihydrofolate reductase (DHFR) models taken from the <a href="http://ambermd.org/amber10.bench1.html" target="blank">Joint Amber/Charmm</a> benchmark. This is a 159 residue protein with 2489 atoms. The version used for explicit solvent simulations included 7023 TIP3P water molecules, giving a total of 23,558 atoms. All simulations used the AMBER99SB force field and a Langevin integrator, and were run with OpenMM 7.4.
          <v-expansion-panels accordion flat hover>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Treatment of Solvent
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Three different methods were used to calculate the effect of solvent:
                <ul>
                  <li>
                    <b>Implicit:</b> Solvent was represented with an OBC-GBSA implicit solvent model. Long range interactions were cut off at 2 nm.
                  </li>
                  <li>
                    <b>Explicit-RF:</b> Solvent was modeled explicitly. Long range interactions were cut off at 1 nm using the reaction field method.
                  </li>
                  <li>
                    <b>Explicit-PME:</b> Solvent was modeled explicitly. Long range interactions were calculated using Particle Mesh Ewald. The Ewald error tolerance was set to 0.0005, and the direct space cutoff was chosen to optimize performance (0.9 nm for the GPU simulations, 0.8 nm for the CPU simulations).
                  </li>
                </ul>
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Time Step
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Two step sizes were used for the simulations:
                <ul>
                  <li>
                    <b>2 fs:</b> For these simulations, the lengths of bonds involving hydrogen were constrained.
                  </li>
                  <li>
                    <b>5 fs:</b> For these simulations, the lengths of all bonds were constrained. In addition, mass repartitioning was used to increase the mass of hydrogen atoms to 4 amu.
                  </li>
                </ul>
                Water molecules were fully rigid in all cases, and the constraint error tolerance was set to 0.00001.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Platforms
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Simulations were run using the following platforms and hardware:
                <ul>
                  <li>CUDA platform on an NVIDIA Titan X Pascal GPU.</li>
                  <li>CUDA platform on an NVIDIA Titan V GPU.</li>
                  <li>OpenCL platform on NVIDIA Titan X Pascal GPU.</li>
                  <li>OpenCL platform on NVIDIA Titan V GPU.</li>
                  <li>OpenCL platform on an AMD Radeon RX 5700 XT GPU.</li>
                  <li>CPU platform on a 4 core 4.3 GHz Intel Core i7-7740X CPU.</li>
                </ul>
                Water molecules were fully rigid in all cases, and the constraint error tolerance was set to 0.00001.
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
          <v-container class="d-flex justify-center" id="dhfr"></v-container>
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex justify-center">
      <v-btn href="https://simtk.org/plugins/moinmoin/openmm/Benchmarks" target="blank">More benchmarks</v-btn>
    </v-container>
  </div>
</template>

<script>
module.exports = {
  created: function() {
    google.charts.load('current', { packages: ['corechart', 'bar'] });
    const options = {
      width: 800,
      height: 500,
      title: 'Simulation speed',
      titleTextStyle: { bold: true, italic: false, fontSize: 16, color: '#616161' },
      chartArea: { width: '50%', height: '90%'},
      hAxis: {
        title: 'Speed (ns/day)',
        textStyle: { fontSize: 14, color: '#616161' },
        titleTextStyle: { bold: true, italic: false, fontSize: 14, color: '#616161' }
      },
      vAxis: {
        title: 'Benckmark',
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
          const chart = new google.visualization.BarChart(document.getElementById('dhfr'));
          const data = google.visualization.arrayToDataTable(json['dhfr']);
          chart.draw(data, options)
        })
      })
    })
  }
}
</script>