# OpenMM.org website

This repository contains the code for the generation of the static
http://openmm.org website. The site provides a description of the project and
serves links to documentation, downloads, videos, etc. The development of the
OpenMM project itself takes place at https://github.com/openmm/openmm

The site uses the [Vue.js](https://vuejs.org/) framework, and so does not need
any static site generator to edit. The `master` branch is deployed automatically to https://openmm.org via GitHub Pages.

## Development

Fork the repository on GitHub and clone locally. To view the website produced by
a local copy, serve the folder via a simple HTTP server; for example:

```shell
npm install -g http-server
http-server
```
