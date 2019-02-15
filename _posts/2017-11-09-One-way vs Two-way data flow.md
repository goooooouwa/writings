---
layout: post
title: 'One-way vs Two-way data flow'
category: Coding
tags: react, angular
---

One-way data flow in React means: data only flows top to bottom. Any state is always owned by some specific component, and any data or UI derived from that state can only affect components “below” them in the (component hierarchy) tree.

React is all about one-way data flow down the component hierarchy.

Two-way data binding means data can flow both top-down (parent-children) and down-top (child-parent) in component hierarchy tree.

React makes this (Inverse) data flow explicit to make it easy to understand how your program works, but it does require a little more typing than traditional two-way data binding.
