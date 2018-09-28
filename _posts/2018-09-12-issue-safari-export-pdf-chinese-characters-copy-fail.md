---
layout: post
title: "issue: Safari导出的PDF中文无法拷贝"
---

## Issue Description

使用Safari将网站导出的PDF文件后，文件中的中文内容无法正常拷贝。

## Insights:

- 所有网站，使用Safari应用程序打印的PDF无法拷贝中文
- 部分网站（字体？），使用Chrome应用程序打印的PDF可以拷贝中文
- 所有网站，使用Skia/PDF m69制作的PDF基本可用

打印PDF中文拷贝影响因素包括：网站、应用程序、制作程序。

Download test report [here]({{ "/assets/attachments/2018-09-12-issue-safari-export-pdf-chinese-characters-copy-fail/test-report.numbers" | absolute_url }}).