---
category: product_management
title: "User journey和story是否存在对应关系"
date: "2019-10-30"
---

User journey 好像不是能很好的 mapping 到 stories, 两者是不是有直接关系？

User Journey 就是一系列 steps。完成这些 steps 可能需要跳转多个页面，也有可能多个 steps 发生在同一个页面上（比如聊天）。体验上讲，steps 和跳转越少越好。

一个 User story 只关注一个单一的功能点，比如发送聊天消息。是不是一个 step 对应一个或多个 story 呢？不一定。可能一个 story 包括多个 steps（输入消息->点击发送）。所以不一定要把每个 step 拆成 story。它们直接并不是直接对应关系。

User journey 是用来关注用户体验的，可以帮助我们了解用户。

定 roadmap 和细化 story 并不依赖 user journey，只需知道用户 activities 和 tasks。到设计具体 story 实现时，再来根据 user journey 考虑体验等细节。
