---
layout: post
title: 'Automatic Transmission Shift Strategy'
category: cars
tags: 
---

## Matlab: computeThreshold(engine speed, throttle)

https://www.mathworks.com/help/simulink/examples/modeling-an-automatic-transmission-controller.html

Engine speed: RPM

Throttle position: %

Upper threshold: cross point between this and next gear final torque (usually redline, if for maximum acceleration)

Lower threshold: least final torque drivability required 

## automatic transmission shift strategy

https://pure.tue.nl/ws/files/3515320/735458.pdf

DP:

- Fuel optimal
- Drivability optimal

Key concepts:

- Engine Torque Map
- Drivability: torque reserve

SDP

Realtime implementable, infinite horizon, input from previous circles