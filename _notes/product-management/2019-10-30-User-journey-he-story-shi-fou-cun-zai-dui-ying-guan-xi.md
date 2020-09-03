---
category: product-management
title: "User journey和story是否存在对应关系"
date: "2019-10-30"
---

User journey 好像不是能很好的mapping 到stories, 两者是不是有直接关系？ 

User Journey 就是一系列steps。完成这些steps可能需要跳转多个页面，也有可能多个steps发生在同一个页面上（比如聊天）。体验上讲，steps和跳转越少越好。 

一个User story只关注一个单一的功能点，比如发送聊天消息。是不是一个step 对应一个或多个story呢？不一定。可能一个story包括多个steps（输入消息->点击发送）。所以不一定要把每个step拆成story。它们直接并不是直接对应关系。 

User journey 是用来关注用户体验的，可以帮助我们了解用户。 

定roadmap和细化story并不依赖user journey，只需知道用户activities和tasks。到设计具体story实现时，再来根据user journey 考虑体验等细节。
