---
date: 2014-07-22
title: rails app setup
category: rails
---
# rails app setup

```
# install rails
gem install rails -v 4.0.4

# generate SSH public key and add it to Github account
ssh-keygen -t rsa -C “your_email@example.com"

# clone code
git clone git@github.com:STCpl/tenderchase.git

# install postgresql
sudo apt-get install postgresql

# install the postgresql dev package for pg gem
sudo apt-get install libpq-dev

# initial setup for postgresql by following [My own postgresql instal setup](https://www.evernote.com/shard/s25/nl/2701312/af645fb0-452d-4ba0-bbab-3db088dc5fb3)

# (optional) download and install elasticsearch
wget elasticsearch_download_url
sudo dpkg -i ./elasticsearch-xxx.deb

# config database.yml for app

# bundle install
bundle install
```
