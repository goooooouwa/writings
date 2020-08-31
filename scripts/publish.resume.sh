#!/bin/bash

cd $1
JEKYLL_ENV=production jekyll build --config _config.yml,_config.resume.yml

cd $1/_site
git init
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git remote add origin https://goooooouwa:$2@github.com/goooooouwa/resume.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
