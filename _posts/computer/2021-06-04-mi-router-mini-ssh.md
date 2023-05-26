---
published: true
title: 如何在小米路由器上安装ssh工具（以及如何解决mini版亮红灯问题）
category: computer
tags: mi-router ssh
---

小米路由器安装 ssh 的[YouTube 视频教程](https://www.youtube.com/watch?v=Ni1niDKr66w)。

前期准备：

1. 在 MIWIFI 开放平台[下载](http://www.miwifi.com/miwifi_download.html)小米路由器 mini 开发版 ROM
2. 登陆小米路由器 web 管理界面，手动选择 rom 文件，刷机
3. 进入[开放页面](http://www.miwifi.com/miwifi_open.html)，点击开启 SSH 工具，登录小米账号，点击下载工具包，（顺便记一下路由器的 root 密码）

接下来根据官方操作安装 ssh 工具，步骤如下：

1. 请将下载的工具包 bin 文件复制到 U 盘（FAT/FAT32 格式）的根目录下，保证文件名为 miwifi_ssh.bin；
1. 断开小米路由器的电源，将 U 盘插入 USB 接口；
1. 按住 reset 按钮之后重新接入电源，指示灯变为黄色闪烁状态即可松开 reset 键；
1. 等待 3-5 秒后安装完成之后，小米路由器会自动重启，之后您就可以尽情折腾啦 ：）

在跟着官方操作后，我的小米路由器 mini 黄灯闪烁后一直显示红灯，安装 ssh 失败了。

于是网上搜索了一下，貌似小米路由器 ssh 亮红灯只发生在小米路由器 mini 上（我怎么这么好运？），后来找到一个解决这个问题的[教程](https://blog.csdn.net/chouzhou9701/article/details/113591609)。按照指示刷了旧版本的开发版 ROM（mwifi mini 开发板 0.4.36 版），结果还是不行。

在各种尝试失败的绝望之后，最后换了一个 U 盘试试，没想到居然成功了，真是一波三折。
