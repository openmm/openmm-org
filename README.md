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

Building locally
----------------

You can follow the [Github pages documentation](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/), although we don't use Github pages per se.

Install ruby which gives you `gem`. Use that to install `bundler`

```bash
gem install bundler           # install dependency manager
bundle install                # Install dependencies
bundle exec jekyll serve      # Build and serve the site
```

That final command seems needlessly complicated. Use the included
`jekyll.sh` so you don't have to remember it.
