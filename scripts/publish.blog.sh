#!/bin/bash

echo $1
echo $2
cd $1/_site
git init
git config --local user.email "sfxu@thoughtworks.com"
git config --local user.name "Shunfa Xu"
git remote add origin https://goooooouwa:$2@github.com/goooooouwa/blog.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
