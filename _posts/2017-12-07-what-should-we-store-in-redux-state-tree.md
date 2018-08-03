---
layout: post
title: 'What should we store in redux state tree?'
categories:
    - programming
    - redux
---

keep local state in component, props passed in either from other presentational component or a container component( mapped from state).

code examples.

### state tree is different than global variable
though the state tree is readable from every container component, but only modifiable via corresponding reducers. There won’t be untraceable mutation of state tree.

### drawbacks of storing properties in  context
context is just like global variable, relying on it too much will simply make the component unusable independently.

### drawbacks of storing props in store
storing properties that one component can not run without in redux store (or any place outside of component) will couple they together, which makes reusing component outside of current project difficult.
so only store properties that the component doesn’t depend on to run.

### sometimes is OK to store UI state in store
if using props to manage component state too difficult (passing prop deep through the component tree), it might be simpler to store the state in store and direct passing it to the desired presentational component with the help of a container component.