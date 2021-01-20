<template>
<div>

  <div>
      <h3 class="text-center">Extreme Flexibility. Extreme Speed.</h3>
      <div class="row clearfix">
        <div class="col-md-12 column text-center">
          <p class="text-center lead">
            Extreme flexibility through custom forces and integrators. Extreme performance through GPU Acceleration, with optimizations for AMD, NVIDIA, and Intel Integrated GPUs. It's fast on CPUs too. <a href="about.html#benchmarks">See the benchmarks.</a>
          </p>
        </div>
      </div>
  </div>

<div class="jumbotron jumbtron-color">
      <div class="container">
      <div class="row clearfix">
      <div class="col-md-10 column">
          <h1>About OpenMM</h1>
          <p>
            Backed by researchers and developers from Stanford University, MSKCC, UPF, and others around the world.
          </p>
      </div>
      </div>
      </div>
    </div>
    <div class="container">
      <div class="row clearfix">
        <div class="col-md-4 column text-center">
          <h3 class="text-center">Custom Forces</h3>
          <p class="text-center lead">
            Want a custom force between two atoms? No problem. Write your force expressions in string format, and OpenMM will generate blazing fast code to do just that. No more hand-writing GPU kernels.
          </p>
        </div>
        <div class="col-md-4 column text-center">
          <h3 class="text-center">Highly Optimized</h3>
          <p class="text-center lead">
            OpenMM is optimized for the latest generation of compute hardware, including AMD (via OpenCL) and NVIDIA (via CUDA) GPUs. We also heavily optimize for CPUs using intrinsics.
          </p>
        </div>
        <div class="col-md-4 column text-center">
          <h3 class="text-center">Portable</h3>
          <p class="text-center lead">
            We strive to make our binaries as portable as possible. We've tested OpenMM on many flavors of Linux, OS X, and even Windows.
          </p>
        </div>
      </div>

      <div class="row clearfix text-center">
        <p class="lead">Current Citation</p>
        <cite title="publication">Peter Eastman, Jason Swails, John D. Chodera, Robert T. McGibbon, Yutong Zhao, Kyle A. Beauchamp, Lee-Ping Wang, Andrew C. Simmonett, Matthew P. Harrigan, Chaya D. Stern, Rafal P. Wiewiora, Bernard R. Brooks, Vijay S. Pande. OpenMM 7: Rapid Development of High Performance Algorithms for Molecular Dynamics. PLoS Comput. Biol. 13:e1005659, 2017.</cite>
        <!-- <cite title="publication">P. Eastman, M. S. Friedrichs, J. D. Chodera, R. J. Radmer, C. M. Bruns, J. P. Ku, K. A. Beauchamp, T. J. Lane, L.-P. Wang, D. Shukla, T. Tye, M. Houston, T. Stich, C. Klein, M. R. Shirts, and V. S. Pande. "OpenMM 4: A Reusable, Extensible, Hardware Independent Library for High Performance Molecular Simulation." J. Chem. Theor. Comput. 9(1):461-469. (2013)</cite> -->
        <p> <a href="https://simtk.org/project/xml/publications.xml/?group_id=161"> More publications</a></p>
      </div>

      <h3 class="page-header text-center">Part of the Omnia Suite</h3>
      <div class="lead text-center"> The cornerstone for the Omnia suite of tools for predictive biomolecular simulation.  <a href="https://omniamd.squarespace.com/"> Learn more </a> </div>

    <h3 class="page-header text-center">Funding</h3>
    <div class="lead text-center">OpenMM is currently (May 2020-Apr 2021) funded by a <a href="https://chanzuckerberg.com/eoss/proposals/openmm-key-infrastructure-for-biomolecular-modeling-and-simulation">Chan Zuckerberg Initiative Essential Open Source Software for Science grant</a> </div>

    <div class="row clearfix">
      <h3 class="text-center page-header">Built with OpenMM</h3>
      <p class="lead text-center">Trusted and used by scientists around the world.</p>
      <div class="col-md-2 column text-center"></div>
      <div class="col-md-4 column text-center">
        <ul class="list-group">
          <a href="https://foldingathome.org" class="list-group-item lead">Folding<span style="color: red; font-weight: 500;">@</span>home</a>
          <a href="https://www.charmm.org" class="list-group-item lead">CHARMM</a>
          <a href="https://simtk.org/home/forcebalance" class="list-group-item lead">ForceBalance</a>
          <a href="http://getyank.org" class="list-group-item lead">YANK</a>
        </ul>
      </div>
      <div class="col-md-4 column text-center">
        <ul class="list-group">
          <a href="https://github.com/pandegroup/pdbfixer" class="list-group-item lead">PDBFixer</a>
          <a href="http://www.gromacs.org/" class="list-group-item lead">GROMACS</a>
          <a href="https://biomol.bme.utexas.edu/tinkergpu/index.php?title=Main_Page" class="list-group-item lead">TINKER</a>
          <a href="https://siremol.org" class="list-group-item lead">SireMol</a>
        </ul>
      </div>
      <div class="col-md-2 column text-center"></div>
    </div>
    <div class="row clearfix">
      <a name="benchmarks"></a>
      <h3 class="text-center page-header">OpenMM 7.4 Benchmarks</h3>
      <p class="text-center lead"> Performance on DHFR measured in ns/day. <a href="https://simtk.org/plugins/moinmoin/openmm/BenchmarkOpenMMDHFR">Details.</a></p>
      <div class="col-md-2 column"></div>
      <div class="col-md-9 column text-center">
      <table class="table">
        <thead>
        <tr>
          <th>Simulation Type</th>
          <th>CUDA (Titan X Pascal)</th>
          <th>CUDA (Titan V)</th>
          <th>CPU (Core i7-7740X)</th>
        </tr>
        <tr>
          <td>Implicit, 2 fs</td>
          <td>927</td>
          <td>1004</td>
          <td>9.4</td>
        </tr>
        <tr>
          <td>Implicit, 5 fs HMR</td>
          <td>1528</td>
          <td>1437</td>
          <td>23.2</td>
        </tr>
        <tr>
          <td>Explicit-RF, 2 fs</td>
          <td>626</td>
          <td>697</td>
          <td>20.2</td>
        </tr>
        <tr>
          <td>Explicit-RF, 5 fs HMR</td>
          <td>1118</td>
          <td>1071</td>
          <td>45.6</td>
        </tr>
        <tr>
          <td>Explicit-PME, 2 fs</td>
          <td>393</td>
          <td>419</td>
          <td>16.5</td>
        </tr>
        <tr>
          <td>Explicit-PME, 5 fs HMR</td>
          <td>752</td>
          <td>785</td>
          <td>37.9</td>
        </tr>
        </thead>
      </table>
      </div>
</div></div>

    <div class="jumbotron jumbtron-color">
      <div class="container">
      <div class="row clearfix">
      <div class="col-md-12 column">
          <h1>Resources</h1>
          <p>Resources that make it easier to use OpenMM.</p>
      </div>
      </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-md-10" role="main">
          <div>
            <p class="lead">The OpenMM team has reviewed the links on this page, but we encourage the community to add their own.</p>
            <h2 class="page-header">Tools</h2>
            <p class="lead"> <a href="https://omniamd.squarespace.com">Omnia</a> An open source ecosystem built around OpenMM.</p>
            <p class="lead"> <a href="https://openmmtools.readthedocs.io">OpenMMTools</a> Integrators, enhanced sampling methods, test systems, and alchemical factories for OpenMM.</p>
            <p class="lead"> <a href="https://github.com/openmm/openmm-setup">OpenMM Setup</a> A graphical application to set up and run simulations with OpenMM. Includes pull-down menus, pop-up tips, error checking, and live script building capabilities.</p>
            <p class="lead"> <a href="https://simtk.org/svn/pyopenmm/trunk/simtk/pyopenmm/extras/optimizepme.py">PME Optimizer</a> A script to optimize the performance of PME. It runs a series of simulations and selects the parameters that give best performance for simulating a particular system on particular hardware.</p>
            <p class="lead"> <a href="https://github.com/leeping/OpenMM-MD">OpenMM-MD</a> A general purpose script (with lots of comments) that uses the OpenMM Python module to drive MD simulations. Simulation options are handled via an input file. To facilitate use of the script, the available options are always printed out for you to see, along with documentation.</p>
                  </div>
        </div>
      </div>
    </div>

   <div class="jumbotron jumbtron-color">
      <div class="container">
      <div class="row clearfix">
      <div class="col-md-12 column">
        <h1>Support</h1>
        <p> For help on submitting bug reports, requesting features, etc.</p>
      </div>
      </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-md-10" role="main">
          <h2 class="page-header">Users</h2>
          <p class="lead"> Use the <a href="https://github.com/simtk/openmm/issues">Issue Tracker</a> to file bug reports. Please include as much information about your hardware, simulation parameters, and system as possible. It is highly recommended to included serialized XML files of your System, Integrator, and State objects.</p>
          <p class="lead"> For general help on how to use OpenMM, check out our <a href="https://simtk.org/forums/viewforum.php?f=161">forum</a> or refer to our <a href="https://github.com/openmm/openmm/wiki/Frequently-Asked-Questions">FAQ</a> for common errors.</p>
          <p class="lead"> If you'd like to request a new feature to be included into the next version of OpenMM, please use the <a href="https://github.com/simtk/openmm/issues">Issue Tracker</a>. Note that we have a review process, and while we will consider all requests, we cannot guarantee that they will be implemented.</p>
          <p class="lead">A list of recommended hardware is available <a href="http://wiki.simtk.org/openmm/Hardware">here</a>.</p>
          <h2 class="page-header">Developers</h2>
          <p class="lead"> We encourage developers to use our Github Repository's <a href="https://github.com/simtk/openmm/issues"> Issue Tracker</a>. Note that the discussion is highly technical and is not suitable for most users. </p>
        </div>
      </div>
    </div>

</div>
</template>