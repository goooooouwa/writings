---
date: 2015-01-27
title: Using Rails link_to for links that post
category: rails
---
# Using Rails link_to for links that post

The short answer is that if what you mean by "parameters" is form fields, then you simply can't do this (at least not in a straightforward way that I can see). You should instead use a form with a submit button, styled to look like a link (if that's what you want it to look like).

If on the other hand you had meant *query* parameters, then this would work:

`link_to "Profile", profile_path(@profile.id, param1: 'value1', param2: 'value2'), method: :post`

