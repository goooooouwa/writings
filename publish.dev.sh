#!/bin/bash

# run below commands in your jekyll root directory

jekyll build --unpublished --config _config.dev.yml
cd _site
git init
git remote add origin git@github.com:goooooouwa/drafts.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
rm -rf .git
