#!/bin/bash

cd $1
JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config.blog.yml --unpublished

cd $1/_site
git init
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git remote add origin https://goooooouwa:$2@github.com/goooooouwa/blog.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
