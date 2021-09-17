<img alt="Website" src="https://img.shields.io/website?url=https%3A%2F%2Fopenmm.org">

# OpenMM website

This repository contains the content of https://openmm.org.

**Note:** the source code of OpenMM is at https://github.com/openmm/openmm.

## Design

The website is fully static from the server side to facilitate deployment via [GitHub Pages](https://pages.github.com/).
All the dependencies are served via CDN, preferably [jsDelivr](https://www.jsdelivr.com/).

Key dependencies:
- [Vue.js](https://vuejs.org/)
- [Vue Router](https://router.vuejs.org/)
- [Vue Loader](https://vue-loader.vuejs.org/)
- [Vuetify](https://vuetifyjs.com/)

## Deployment

 The `master` branch is automatically deployed to https://openmm.org via [GitHub Pages](https://pages.github.com/).

## Development

1. Fork the repository and clone it locally.
2. Create a new new branch and make modifications.
3. Deploy the branch via [GitHub Pages](https://pages.github.com/), so it is visible publicly: `https://[username].github.io/openmm-org/` (e.g https://raimis.github.io/openmm-org/)
4. Make a pull request.

**Note:** to view the website locally, serve the root folder via a simple HTTP server.
For example:
```shell
npm install -g http-server
http-server
```