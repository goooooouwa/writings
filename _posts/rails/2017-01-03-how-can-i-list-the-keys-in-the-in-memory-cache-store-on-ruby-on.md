---
date: 2017-01-03
title: How can I list the keys in the in-memory cache store on Ruby on Rails
category: rails
---
# How can I list the keys in the in-memory cache store on Ruby on Rails?

`Rails.cache.instance_variable_get(:@data).keys`

