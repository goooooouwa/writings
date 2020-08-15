---
title: "转载|What's a conflict in Version Control System?"
date: "2013-10-24"
---

此文为转载，出处找不到了，如果知道请告知。

In a Version Control System( distributed), before every data change applies, the system will check the version difference of the incoming data and the central data.  
If same, the change is applied and the version will be changed on the central data;

If the central data version is different then the version of the incoming data( this is called a conflict), the change will be preserved and leave the administrator to process.

In a system without version control, any new change to the central data will be overridden by a later change. This will cause data lose.
