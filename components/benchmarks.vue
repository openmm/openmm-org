<template>
  <div>
    <v-container>
      <v-card flat>
        <v-card-title>Simulation speed</v-card-title>
        <v-card-text>
          Benchmarks of simulation speed on typical biochemical systems.
        </v-card-text>
      </v-card>
    </v-container>
    <v-container class="d-flex flex-column align-center">
      <v-card class="mb-6">
        <v-card-title>Dihydrofolate Reductase (DHFR)</v-card-title>
        <v-card-text class="text-justify">
          OpenMM 8.0 was benchmarked on the dihydrofolate reductase (DHFR) models taken from the <a href="https://ambermd.org/GPUPerformance.php" target="blank">Joint Amber/Charmm</a> benchmark.
          This is a 159 residue protein with 2489 atoms.
          The version used for explicit solvent simulations included 7023 TIP3P water molecules, giving a total of 23,558 atoms.
          All simulations used the AMBER99SB force field and a Langevin integrator.
          <v-expansion-panels class="pt-3" focusable>
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
                Integration
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used LangevinMiddleIntegrator with a step size of 4 fs.  The lengths of bonds involving hydrogen were constrained, and water molecules were fully rigid.
                The constraint error tolerance was set to 0.00001.  In addition, mass repartitioning was used to increase the mass of hydrogen atoms to 1.5 amu.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Platforms
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Simulations were run using the CUDA platform on a variety of Ampere (RTX 3090, A100), Ada Lovelace (RTX 4080, RTX 4090), and Hopper (H100) GPUs.
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
          <v-container class="d-flex justify-center" id="dhfr"></v-container>
        </v-card-text>
      </v-card>
      <v-card class="mb-6">
        <v-card-title>Apolipoprotein A1 (ApoA1)</v-card-title>
        <v-card-text class="text-justify">
          OpenMM 8.0 was benchmarked on Apolipoprotein A1 (ApoA1). This consists of 392 protein residues, 160 POPC lipids, and 21,458 water molecules, for a total of 92,224 atoms.
          All simulations used the AMBER14 force field.
          <v-expansion-panels class="pt-3" focusable>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Treatment of Solvent
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Three different methods were used to calculate the effect of solvent:
                <ul>
                  <li>
                    <b>RF:</b> Long range interactions were cut off at 1 nm using the reaction field method.
                  </li>
                  <li>
                    <b>PME:</b> Particle Mesh Ewald was used for Coulomb interactions, and a sharp cutoff for Lennard-Jones interactions. The Ewald error tolerance was set to 0.0005, and the direct space cutoff was chosen to optimize performance (0.9 nm for the GPU simulations, 0.8 nm for the CPU simulations).
                  </li>
                  <li>
                    <b>LJPME:</b> Particle Mesh Ewald was used for both Coulomb and Lennard-Jones interactions. The Ewald error tolerance was set to 0.0005, and the direct space cutoff was chosen to optimize performance (0.9 nm for the GPU simulations, 0.8 nm for the CPU simulations).
                  </li>
                </ul>
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Integration
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used LangevinMiddleIntegrator with a step size of 4 fs.  The lengths of bonds involving hydrogen were constrained, and water molecules were fully rigid.  The constraint error tolerance was set to 0.00001.  In addition, mass repartitioning was used to increase the mass of hydrogen atoms to 1.5 amu.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Platforms
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Simulations were run using the CUDA platform on a variety of Ampere (RTX 3090, A100), Ada Lovelace (RTX 4080, RTX 4090), and Hopper (H100) GPUs.
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
          <v-container class="d-flex justify-center" id="apoa1"></v-container>
        </v-card-text>
      </v-card>
      <v-card class="mb-6">
        <v-card-title>Cellulose</v-card-title>
        <v-card-text class="text-justify">
          OpenMM 8.0 was benchmarked on the cellulose model taken from the <a href="https://ambermd.org/GPUPerformance.php" target="blank">Joint Amber/Charmm</a> benchmark.
          It consists of a set of cellulose molecules (91,044 atoms) solvated with 105,855 water molecules, for a total of 408,609 atoms.
          <v-expansion-panels class="pt-3" focusable>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Treatment of Solvent
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used Particle Mesh Ewald for Coulomb interactions and a sharp cutoff for Lennard-Jones interactions. The Ewald error tolerance was set to 0.0005, and the direct space cutoff was set to 0.9 nm.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Integration
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used LangevinMiddleIntegrator with a step size of 4 fs.  The lengths of bonds involving hydrogen were constrained, and water molecules were fully rigid.  The constraint error tolerance was set to 0.00001.  In addition, mass repartitioning was used to increase the mass of hydrogen atoms to 1.5 amu.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Platforms
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Simulations were run using the following platforms and hardware:
                <ul>
                  <li>CUDA platform on a variety of Ampere (RTX 3090, A100), Ada Lovelace (RTX 4080, RTX 4090), and Hopper (H100) GPUs.</li>
                  <li>CUDA platform parallelizing the simulation across multiple A100 GPUs connected by NVLink-3.</li>
                </ul>
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
          <v-container class="d-flex justify-center" id="cellulose"></v-container>
        </v-card-text>
      </v-card>
      <v-card class="mb-6">
        <v-card-title>Satellite Tobacco Mosaic Virus (STMV)</v-card-title>
        <v-card-text class="text-justify">
          OpenMM 8.0 was benchmarked on the satellite tobacco mosaic virus (STMV) model taken from the <a href="https://ambermd.org/GPUPerformance.php" target="blank">Joint Amber/Charmm</a> benchmark.
          It consists of 8820 protein residues, 949 RNA bases, 300,053 water molecules, and 649 sodium ions, for a total of 1,067,095 atoms.
          <v-expansion-panels class="pt-3" focusable>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Treatment of Solvent
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used Particle Mesh Ewald for Coulomb interactions and a sharp cutoff for Lennard-Jones interactions. The Ewald error tolerance was set to 0.0005, and the direct space cutoff was set to 0.9 nm.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Integration
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used LangevinMiddleIntegrator with a step size of 4 fs.  The lengths of bonds involving hydrogen were constrained, and water molecules were fully rigid.  The constraint error tolerance was set to 0.00001.  In addition, mass repartitioning was used to increase the mass of hydrogen atoms to 1.5 amu.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Platforms
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Simulations were run using the following platforms and hardware:
                <ul>
                  <li>CUDA platform on a variety of Ampere (RTX 3090, A100), Ada Lovelace (RTX 4080, RTX 4090), and Hopper (H100) GPUs.</li>
                  <li>CUDA platform parallelizing the simulation across multiple A100 GPUs connected by NVLink-3.</li>
                </ul>
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
          <v-container class="d-flex justify-center" id="stmv"></v-container>
        </v-card-text>
      </v-card>
      <v-card class="mb-6">
        <v-card-title>AMOEBA DHFR</v-card-title>
        <v-card-text class="text-justify">
          OpenMM 8.0 was benchmarked on the DHFR models described above with the AMOEBA polarizable force field.  Full mutual polarization was used,
          with induced dipoles iterated until they converged to a tolerance of 1e-5.
          <v-expansion-panels class="pt-3" focusable>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Treatment of Solvent
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Explicit water molecules were included in the simulation. The Particle Mesh Ewald method was used to model long range interactions,
                with the direct space cutoff set to 0.7 nm and the Ewald error tolerance set to 0.0005. Van der Waals interactions were cut off at 0.9 nm.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Integration
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                All simulations used MTSLangevinIntegrator.  Bonded forces were computed every 1 fs, and nonbonded forces were computed every 2 fs.
                No degrees of freedom were constrained.
              </v-expansion-panel-content>
            </v-expansion-panel>
            <v-expansion-panel>
              <v-expansion-panel-header class="text--secondary">
                Platforms
              </v-expansion-panel-header>
              <v-expansion-panel-content class="text--secondary">
                Simulations were run using the CUDA platform on a variety of Ampere (RTX 3090, A100), Ada Lovelace (RTX 4080, RTX 4090), and Hopper (H100) GPUs.
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
          <v-container class="d-flex justify-center" id="amoebadhfr"></v-container>
        </v-card-text>
      </v-card>
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
      chartArea: { width: '50%', height: '80%'},
      hAxis: {
        title: 'Speed (ns/day)',
        textStyle: { fontSize: 14, color: '#616161' },
        titleTextStyle: { bold: true, italic: false, fontSize: 14, color: '#616161' },
        minValue: '0'
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
      fetch('data/benchmarks.json').then(res => {
        res.json().then(json => {
          Object.entries(json).forEach(([name, data]) => {
            const chart = new google.visualization.BarChart(document.getElementById(name));
            data = google.visualization.arrayToDataTable(data);
            chart.draw(data, options)
          });
        })
      })
    })
  }
}
</script>