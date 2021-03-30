---
date: 2014-04-19
title: ajax - Rails 3 remote form How do I specify the content type
category: rails
---
# ajax - Rails 3 remote form: How do I specify the content type

You can set the content-type with:

`= form_for(@object, :remote => true, :html => {:'data-type' => 'json'})`

As described in [rails.js](https://github.com/rails/jquery-ujs/blob/master/src/rails.js#L106) line 106.
