---
layout: post
title: 'JavaScript 如何动态定义对象属性'
categories: 'JavaScript'
---

以下实例中通过`[]`语法以传入的变（常）量`b `的值`"key"`作为一个属性来生成对象`a`。
	let b = "key";
	let a = {
	  [b]: "value",
	};
	// a = { key: "value" }
