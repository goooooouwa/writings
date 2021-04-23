---
category: productivity
title: 博客setup
tag: setup
published: true
---

![](https://mermaid.ink/svg/eyJjb2RlIjoiZ3JhcGggVERcbiAgICBUMVtXb3JrZmxvdyAxOiBDcmVhdGUvZWRpdCBwb3N0IGluIFByb3NlLmlvXSAtLi0-IEFcblxuICAgIEFbQ3JlYXRlL2VkaXQgcG9zdCBpbiBQcm9zZS5pb10gLS0-IEJcbiAgICBCW0NvbW1pdCBjaGFuZ2VzIHRvIGdpdGh1YiByZXBvXVxuICAgIEIgLS0-IENbVHJpZ2dlciBHaXRodWIgYWN0aW9ucyB0byBidWlsZCBhbmQgZGVwbG95IHRoZSBibG9nIHRvIGdpdGh1YiBwYWdlc10iLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9LCJ1cGRhdGVFZGl0b3IiOmZhbHNlfQ)

<div class="mermaid">
    graph TD
    T1[Workflow 1: Create/edit post in Prose.io] -.-> A

    A[Create/edit post in Prose.io] --> B
    B[Commit changes to github repo]
    B --> C[Trigger Github actions to build and deploy the blog to github pages]
</div>

## Blog

Jekyll repo + Github actions

## Jekyll文件管理

[ ] 轻松为markdown文件添加front matter

为markdown文件生成带日期的文件名

为markdown文件添加带连字符的英文名

## 工具

- 在线编辑文章: prose.io
- 批量修改：VS Code
- 批量添加front matter：[evernote2markdown](https://github.com/goooooouwa/evernote2markdown)

