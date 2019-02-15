---
layout: post
title: 'Redux FAQs Slide script'
category: Coding
tags: redux
published: false
---

Demo on two way binding problem

## Why is state management all of a sudden such an important topic?

As the requirements for JavaScript single-page applications have become increasingly complicated, **our code must manage more state than ever before**. Managing this ever-changing state is hard. If a model can update another model, then a view can update a model, which updates another model, and this, in turn, might cause another view to update. 

http://redux.js.org/docs/introduction/Motivation.html

## What is Redux, really?

Redux a predictable state container. It serves only one purpose: manage a state tree. It does one thing only: new_state = root_reducer(old_state, action)`.

## What is Redux not?

Redux is not a full web framework or persistance solution. Redux is conceptually different from the traditional Model layer in MVC.

## Do I need Redux?

Probably not. Certain scenarios are quite suitable.

https://medium.com/swlh/the-case-for-flux-379b7d1982c6#.fih7um7po

## What is functional programming? What is Reactive Programming?

https://en.wikipedia.org/wiki/Functional_programming
https://en.wikipedia.org/wiki/Reactive_programming

## What has Redux to do with Flux? React? Rx?

http://redux.js.org/docs/introduction/PriorArt.html
http://redux.js.org/docs/basics/UsageWithReact.html

## Caveats
* How is an action dispatched?  
Each time an action is dispatched, the root reducer will cascadingly call all other reducers with the action and the state slice http://redux.js.org/docs/basics/DataFlow.html
* How to subscribe to single property change in Redux store?  
There is no way to subscribe to part of the store when using subscribe directly, but as the creator of Redux says himself - don't use subscribe directly! http://redux.js.org/docs/api/Store.html#subscribe
* Can I do two way data binding in Redux? How?  
Yes, you can. For a two way binding between property A and B. You need to check if property A is changed in subscribe() change listener, and if it's changed, you dispatch an action to change property B, vise versa.
