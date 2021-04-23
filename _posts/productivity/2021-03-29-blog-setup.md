---
category: productivity
title: 博客setup
tag: setup
published: true
---

![](https://i.imgur.com/tTZDOts.png)

```mermaid
    graph TD
    T1[Workflow 1: Create/edit blog posts] -.-> A

    A[Create/edit post in Prose.io] --> B
    B[Commit changes to github repo]
    B --> C[Trigger Github actions to build and deploy the blog to github pages]
```

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
