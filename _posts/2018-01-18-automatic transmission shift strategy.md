# automatic transmission shift strategy

Matlab: computeThreshold(engine speed, throttle)
Engine speed: RPM
Throttle position: %

Upper threshold: cross point between this and next gear final torque (usually redline, if for maximum acceleration)
Lower threshold: least final torque drivability required 

DP:
Fuel optimal
Drivability optimal

Key concepts:
Engine Torque Map
Drivability: torque reserve

SDP
Realtime implementable, infinite horizon, input from previous circles