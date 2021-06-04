---
published: true
title: 如何在小米路由器上安装ssh工具（以及如何解决mini版亮红灯问题）
category: 'mi-router, ssh'
hidden: true
---

小米路由器安装ssh的[YouTube视频教程](https://www.youtube.com/watch?v=Ni1niDKr66w)。

前期准备：

1. 在MIWIFI开放平台[下载](http://www.miwifi.com/miwifi_download.html)小米路由器mini开发版ROM
2. 登陆小米路由器web管理界面，手动选择rom文件，刷机
3. 进入[开放页面](http://www.miwifi.com/miwifi_open.html)，点击开启SSH工具，登录小米账号，点击下载工具包，（顺便记一下路由器的root密码）

接下来根据官方操作安装ssh工具，步骤如下：

1. 请将下载的工具包bin文件复制到U盘（FAT/FAT32格式）的根目录下，保证文件名为miwifi_ssh.bin；
1. 断开小米路由器的电源，将U盘插入USB接口；
1. 按住reset按钮之后重新接入电源，指示灯变为黄色闪烁状态即可松开reset键；
1. 等待3-5秒后安装完成之后，小米路由器会自动重启，之后您就可以尽情折腾啦 ：）

在跟着官方操作后，我的小米路由器mini黄灯闪烁后一直显示红灯，安装ssh失败了。

于是网上搜索了一下，貌似小米路由器ssh亮红灯只发生在小米路由器mini上（我怎么这么好运？），后来找到一个解决这个问题的[教程](https://blog.csdn.net/u011029104/article/details/107692976）。按照指示刷了旧版本的开发版ROM（mwifi mini 开发板0.4.36版），结果还是不行。

在各种尝试失败的绝望之后，最后换了一个U盘试试，没想到居然成功了，真是一波三折。

