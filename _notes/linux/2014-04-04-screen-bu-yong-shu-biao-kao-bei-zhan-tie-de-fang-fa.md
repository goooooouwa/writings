---
date: 2014-04-04
title: Screen不用鼠标拷贝粘贴的方法
category: linux
---
# Screen不用鼠标拷贝粘贴的方法

You can use GNU screen's copy and paste commands.

Quick tutorial:

1. Open screen: `screen` (or `screen myprog my args here`)
2. Run your program, producing output you want copied
3. Enter copy mode: ^A [
4. Move your cursor to the start point
5. Hit enter
6. Move your cursor to the end point
7. Hit enter
8. Paste: ^A ]

