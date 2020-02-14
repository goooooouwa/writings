#!/bin/bash

echo $WORKSPACE
cd $WORKSPACE/_site
git init
git config --local user.email "sfxu@thoughtworks.com"
git config --local user.name "Shunfa Xu"
git remote add origin https://goooooouwa:$PERSONAL_ACCESS_TOKEN@github.com/goooooouwa/blog.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
