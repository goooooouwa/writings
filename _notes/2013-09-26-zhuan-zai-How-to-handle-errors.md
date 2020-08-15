---
title: "转载|How to handle errors"
date: "2013-09-26"
---

此文为转载，出处找不到了，如果知道请告知。

Error handling( Exception handling)

For errors that should never occur, use assertion, which typically causes execution to abort( technically not an error handling method).

For errors that you do expect to occur, depending on the specific circumstances, you might want to:

- return a neutral value
- substitute the next piece of valid data
- return the same answer as the previous time
- substitute the closest legal value
- log a warning message to a file﻿
- return an error code
- call an error processing routine or object
- display an error message, or shutdown

These are some typical error handling methods. Some languages have built-in support for Exception handling.
