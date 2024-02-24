---
title: OMV主分区扩容
category: computer
tags: omv partition parted resize2fs gparted
published: true
---
OMV主分区扩容本质上需要以下3步：
1. 硬盘上分区后面存在可用的未分配空间（比如对于PVE虚拟机可以使用磁盘操作调整磁盘大小）
1. 扩大分区大小（比如使用parted命令）
1. resize文件系统来使用全部分区大小（比如使用命令resize2fs）

有2种方式进行分区扩容操作：
1. Linux系统通过命令行给主分区扩容：https://forum.openmediavault.org/index.php?thread/41271-expand-file-system-size-to-disk-size/
1. OMV通过GParted Live图形界面给主分区扩容：https://www.wnark.com/archives/118.html

![IMG_4196.JPG]({{site.baseurl}}/_posts/computer/IMG_4196.JPG)

OMV通过GParted Live扩容的具体步骤如下：
1. 安装kernel插件
1. 安装GParted Live ISO
1. 重启到GParted Live一次
1. 一路确认进入GParted Live图形界面
1. resize分区
1. apply