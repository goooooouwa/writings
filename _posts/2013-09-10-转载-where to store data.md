---
title: 【转载】where to store data?
layout: post
category: coding
---

此文为转载，出处找不到了，如果知道请告知。

I see three general kinds of data storage: Key-value data( e.g. XML, JSON), Document data( e.g. PDF, MP4) and Object data( Model). Key-value data means small size non-relational data. Document data means large size non-relational data. And Object data means relational data.
    
Relational database is an advanced way for object data management. 

Non-relational database is an advanced way for non-relational data management( key-value and document).

Another not-so-advanced way to manage non-relational data is manually storing in file.

Conclusion: where to store data depends on the importance and relation of the data.

* If the data is relational, save in relational database;
* if the data is non-relational but very important, save in non-relational database﻿
* if the data is non-relational and not so important, save in file.
    
Note:  currently non-relational database is not so good at storing large size document, so the usual way to keep it safe is to store document in file with back up, and store it's meta info in non-relational database.

we're seeing a trend in which more and more data is stored in database, and the concept of file and file system are fading away.
