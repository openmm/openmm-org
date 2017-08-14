#!/bin/bash
# Use this command locally to build and serve the site
# --incremental means it will watch files and re-build when they change
bundle exec jekyll serve --incremental $@
