---
layout: post
title: 'is it good practice to do computation in view layer?'
category: coding
tags: 
---

It depends.

It's OK to do visual computation, e.g, 3D affects, view transitions, showing a list, etc. It's good practice to seperate view template and view computation. Take a look at Unobtrusive JavaScript and Angular.

But, try not to do model-related computation in view layer, e.g group items by item name, because then view needs to adjust if model changes. View layer should always accept values from controller AS IS. So it's controller's responsibility to provide a conprehansive set of values views need.
