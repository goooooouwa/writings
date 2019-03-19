#!/bin/bash

# run below commands in your jekyll root directory

sed -i '.bak' 's/url: "https:\/\/goooooouwa.github.io\/"/url: "https:\/\/goooooouwa.github.io\/thoughts\/"/g' _config.yml
jekyll build --unpublished
mv _config.yml{.bak,}
cd _site
git init
git remote add origin git@github.com:goooooouwa/thoughts.git
git add .
git commit -m "jekyll build at $(date)"
git push origin master -f
rm -rf .git
