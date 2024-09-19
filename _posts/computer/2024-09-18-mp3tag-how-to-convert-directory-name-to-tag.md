---
title: 'Mp3Tag: how to convert directory name to tag'
category: computer
published: true
tags: mp3tag
---
In [Mp3Tag](https://www.mp3tag.de/en/), it turns out you can not only just file name but directory name when converting file name to tag. To match a directory name, just use "\" (or "/" depending on the operation system) to indicate a directory.

For example, say you have a file with the following path:

`Z:\Music\U2\2004-How to Dismantle an Atomic Bomb\Vertigo`

In order to convert the information such as artist, year, album from directory names, we can use the following pattern:

`Z:\Music\%artist%\%year%-%album%\%title%`
