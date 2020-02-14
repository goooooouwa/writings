#!/bin/bash

cd $1
JEKYLL_ENV=production jekyll build --config _config.yml,_config.prod.resume.yml

cd $1/_site
git init
git config --local user.email "action@github.com"
git config --local user.name "Github Action"
git remote add origin https://goooooouwa:$2@github.com/goooooouwa/goooooouwa.github.io.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
