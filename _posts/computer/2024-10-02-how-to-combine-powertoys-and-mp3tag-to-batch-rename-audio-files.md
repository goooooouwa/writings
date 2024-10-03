---
title: 如何将音频文件批量按年月进行文件夹分类
category: computer
tags: powertoys mp3tag
published: true
---
最近发现Jellyfin无法正常播放播客音频，简单尝试之后判断是由于播客的单个文件夹音频文件数量太多导致的（每个播客文件夹有大几百个音频文件）。于是我打算将音频文件分文件夹管理，减少单个文件夹的文件数量，来试图解决这个问题。

最终通过使用[PowerToys](https://github.com/microsoft/PowerToys)和[Mp3tag](https://www.mp3tag.de/en/)，我成功地将所有的播客音频文件按月为单位以文件夹分类，具体操作步骤如下：

1. 使用PowerToys批量将播客音频文件从`yearmonthday`（如`20150420`）重命名为`year-month-day`格式；
1. 使用Mp3tag的filename to filename功能，将文件名从`year-month-day`的格式改为`month/year-month-day`。

之后尝试使用Jellyfin播放任意播客音频，可以正常播放。
