OpenMM.org website
==================

[![Build Status](https://travis-ci.org/pandegroup/openmm-org.svg?branch=master)](https://travis-ci.org/pandegroup/openmm-org)

This repository contains the code for the static openmm.org website, available
at http://openmm.org/. The page is static, provides a description of the project,
and serves links to documention, downloads, videos, etc. The development of the
OpenMM project itself takes place at https://github.com/pandegroup/openmm

The site is deployed via an S3 bucket managed through the Pande Group AWS
account. The site should be automatically updated on S3 (using Travis CI) with
each commit to the master branch of this repository.
