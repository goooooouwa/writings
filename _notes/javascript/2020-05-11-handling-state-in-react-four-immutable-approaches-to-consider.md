---
category: javascript
date: 2020-05-11
title: Handling State in React Four Immutable Approaches to Consider
---

how to update state object attribute value

```
updateState({target}) {
   this.setState((prevState) => {
     const updatedUser = {...prevState.user, [target.name]: target.value}; // use previous value in state to build new state...     
     return { user: updatedUser }; // And what I return here will be set as the new state
   }, () => this.doSomething(this.state.user); // Now I can safely utilize the new state I've created to call other funcs...
     );
 }
```