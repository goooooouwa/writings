---
published: true
title: Steam游戏串流遇到的问题及解决办法
category: computer
tags: steam game-streaming steam-link
hidden: true
---

19年底试过Steam游戏串流，当时使用手机连接无线网的方式，感觉卡得不行，觉得这玩意太鸡肋。最近买了Chromecast with Google TV，连上带全局VPN的路由器后，躺在沙发上随时大屏看YouTube不要太爽。折腾了一个星期后，现在可以在电视上听歌、听播客、看电影和电视剧。偶然发现Google TV上还有Nvidia Geforce Now和Steam link的游戏串流app，在电视上随时玩主机游戏的想法油然而生。虽然有Switch，还是想试试随时在电视上玩电脑游戏是否可行，于是由折腾了一个星期的游戏串流。

## 考虑过的其他客厅游戏方案

- 买一根8米的HDMI线，将书房的笔记本电脑连到电视上。
- 将书房的笔记本电脑搬到客厅，连到电视上。

这两个方案总觉得不太优雅，还是想不用走线，不用搬到电脑，简单高质量地在客厅玩电脑游戏。最后还是尝试用Steam串流电脑游戏到客厅的方案。过程中遇到许多问题，在一个个解决后，最后的体验还是很棒的。

## 问题1：进入游戏后黑屏

### 尝试的游戏

上古卷轴Skyrim

### 解决办法

`Steam设置 -> 远程畅玩 -> 主机 -> 勾选NVFBC选项`

[关于NvFBC, NvIFR, NvENC的解释](https://steamcommunity.com/groups/homestream/discussions/0/451850849186356998/):

我不太清楚为什么勾选NVFBC后，我的游戏（无论窗口或全屏）黑屏问题就解决了。不过我注意到，只有当我的串流主机使用`Game polled D3D11 Nv12 + NvENC H264`的Encoder方式时，才不会出现游戏黑屏的问题，并且此时的显示效果和帧数最佳。

![](https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/20210619083002.jpg)

### 其他尝试过但无效的方法

1. 取消勾选硬件编码：`Steam设置 -> 远程畅玩 -> 主机 -> 取消勾选硬件编码`；
2. 将游戏以窗口模式运行
3. 降低串流客户端分辨率，比如720p
4. 降低游戏分辨率和画面质量，比如720p，低画质

## 问题2：非Steam游戏手柄控制无效

### 尝试的游戏

Call of Duty 4 remastered

### 解决办法

以管理员身份运行：`右键Steam -> 属性 -> 兼容性 -> 以管理员身份运行`

https://seanzwrites.com/posts/how-to-play-epic-games-on-steam-and-steamlink/)

## 问题3：串流Ubisoft游戏

### 尝试的游戏

Far Cry 3

### 解决办法

跟随教程：[https://www.reddit.com/r/Steam_Link/comments/9lxn1a/how_to_configure_steam_link_to_play_uplay/](https://www.reddit.com/r/Steam_Link/comments/9lxn1a/how_to_configure_steam_link_to_play_uplay/)

## 问题4：串流Epic游戏

### 尝试的游戏

Borderlands 2

### 解决办法

跟随教程：[https://seanzwrites.com/posts/how-to-play-epic-games-on-steam-and-steamlink/](

## 问题5：串流UWP游戏

### 尝试的游戏

Forza Horizon 4

### 解决办法

跟随教程：[https://steamcommunity.com/groups/homestream/discussions/0/1642041106350344721/](https://steamcommunity.com/groups/homestream/discussions/0/1642041106350344721/)

## 问题6：手柄只能移动镜头

### 尝试的游戏

Half life 2

### 解决办法

`进入Half life 2 -> 选项 -> 鼠标 -> 启用手柄`

### 问题原因

手柄未被正常识别，同时开启了Steam的手柄鼠标功能。

## 问题7：Grid Racedriver 无法使用手柄控制赛车

### 尝试的游戏

Grid Racedriver

### 解决办法

`进入Grid Racedriver -> 选项 -> 操作控制 -> 选择预设1：Xbox 360控制器`

## 问题8：Android TV串流手柄部分按键无效

### 尝试的游戏

Grid Racedriver

### 解决办法

重新配置手柄键位：`设置 -> 控制器 -> 重新映射`



以下是一些还未解决的一些小问题。

## 问题9：Raspberry pi 和android tv 进入游戏后黑屏

### 尝试的游戏

上古卷轴Skyrim

### 可能原因

设备性能不够，无法取消勾选硬件解码

## 问题10：串流只显示部分屏幕内容

### 尝试的游戏

Assetto corsa

### 可能原因

显示分辨率和串流分辨率不一致

## 问题11：UWP游戏串流帧数不够

### 尝试的游戏

Forza Horizion 4

### 可能原因

全屏串流，即使游戏降低为720p，主机串流还是1080p。

[UWP串流性能差的解释](https://steamcommunity.com/groups/homestream/discussions/0/1643178512749251777/)：

> The remote play streaming component always defaults to "DWM Desktop Capture" mode for running UWP games (because Steam cannot hook into the running UWP app). This, unfortunately, results in _far_ worse performance than the usual game-polled methods of capturing frames.

### 打算尝试的方法

使用Moonlight串流UWP游戏。

## 问题12：部分游戏没有声音

### 尝试的游戏

Hitman Go

### 可能原因

游戏音频声道设置不对

## 串流客户端和服务对比

我先后尝试过3个不同串流客户端：

1. Chromecast with Google TV（简称Android TV)
2. Raspberry Pi 3（有线连接）
3. 带Nvidia 650M显卡的笔记本电脑
4. Nvidia GeForce Now

### Android TV和Raspberry Pi 3

使用Android TV和Raspberry Pi 3作为串流客户端，即使使用有线连接，还是会出现部分游戏黑屏，卡顿的情况（不是网络而是客户端解码性能不足），部分游戏可以流畅游玩，比如Drit Rally，可能是游戏优化比较好。

### N卡笔记本

使用我的N卡笔记本作为串流客户端时，即使在5GHz无线连接下，游戏的显示效果和流畅性也都非常好，画面清晰，运行流畅（极少卡顿），比Android TV和Raspberry pi效果好很多。看来不只是网络可能会成为游戏串流的性能瓶颈，客户端的解码性能也会显著影响显示效果。

此外，笔记本电脑使用Steam（而不是Steam link）作为串流客户端，可配置的选项更多，解决问题的workaround也更多。

### Nvidia GeForce Now

非常好的服务，能随处玩自己买过的游戏，还提供免费版，用Android TV连VPN玩了下觉得还可以接受。目前只有浏览器和Android TV连VPN可以玩，Windows客户端会提示地区不支持。可惜目前不支持中国地区。



## 结论

最后，本地串流电脑游戏会遇到各种各样的问题，非常折腾，好在最后结果还是很令人满意的。