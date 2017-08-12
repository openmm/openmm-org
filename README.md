OpenMM.org website
==================

Travis-CI build status: [![Build Status](https://travis-ci.org/pandegroup/openmm-org.svg?branch=master)](https://travis-ci.org/pandegroup/openmm-org)

This repository contains the code for the generation of the static http://openmm.org
website. The site provides a description of the project
and serves links to documentation, downloads, videos, etc. The development of the
OpenMM project itself takes place at https://github.com/pandegroup/openmm

The site is deployed to the `openmm.org` S3 bucket managed through the Pande Group AWS
account. The site should be automatically re-generated and uploaded using Travis CI with
each commit to the master branch of this repository.

Writing a page
--------------

Each page should include Jekyll "front-matter" which describes the page.
For example,

    ---
    title: OpenMM Documentation
    layout: page
    ---

sets the jekyll "layout" to `page` and sets the HTML title attribute
to "OpenMM Documentation". We provide these layouts:

 - `page`: A basic bootstrap template. You're reponsible for almost everything
   in the `<body>` tag. This layout includes css and js files, and appends a
   footer to the end of the body. If you're using this layout, you should be
   writing html. Historical note: This site used to be completely static
   (ie not generated). This layout comprised a minimal refactoring. You could
   probably make it more elegant if you're inclined to do so.
 - `nicepage`: This sets up bootstrap containers and a nice heading. Additional
   front-matter options includes `lead` which will add some text to the heading
   block. Use this layout if you're writing markdown.


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

Pushing to the preview site
---------------------------

Merge your changes to the `preview` branch to automatically build and push to the preview site, located at
http://openmm.org/preview

When satisfied with the preview, merge your changes from `preview` into the `master` branch to automatically push to the main live site http://openmm.org
