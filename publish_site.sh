#!/bin/bash

# run below commands in your jekyll root directory

jekyll build
cd _site
git init
git remote add origin git@github.com:goooooouwa/goooooouwa.github.io.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
rm -rf .git