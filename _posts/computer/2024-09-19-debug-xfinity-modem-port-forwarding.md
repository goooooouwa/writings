---
title: 记一次Xfinity公网端口转发调试
category: computer
tags: modem port-forwarding xfinity
---
本人的家庭网络拓扑如下：

Xfinity modem作为主路由 --端口转发到--> RT-AC86U二级路由 --端口转发到--> OpenWRT旁路由 --端口转发到--> 局域网服务端口

今天突然遇到公网无法访问家庭服务器的问题，经过一翻调试发现Xfinity modem somehow抽风端口转发到RT-AC86U二级路由失效。

调试过程中，删除了原先的端口转发规则后，重新添加新的端口转发规则到其他本地设备，发现可以正常转发，之后再重新添加回原先到RT-AC86U二级路由的端口转发规则后，又无法访问了，尝试过忘掉设备、重置Xfinity的router module后，再将port range改小到8000-9000后又可以访问了，最后反复尝试后将port range缩小到40000以内后，就可以正常公网访问了。当尝试将端口范围扩大到40000以上时，遇到以下错误提示：

![IMG_7700.PNG]({{site.baseurl}}/assets/images/IMG_7700.PNG)


看来Xfinity对40001-41001区间的端口做了限制，可能这就是端口映射失效的原因。于是我通过设置两段port range来绕开这段限制区间，就可以正常使用大于41001的端口公网访问家庭服务器了。

问题暂时算是解决了，后面如果再出问题，我就考虑将Xfinity modem改为Bridge mode了（这样的缺点是无法保留一个稳定的主网络）。

顺便记录一下在Xfinity app上修改端口映射规则的界面操作流程：

![4ee45db9a4004519931cbbd0ce0715f1.jpg]({{site.baseurl}}/assets/images/4ee45db9a4004519931cbbd0ce0715f1.jpg)

![8316b24bc9d444c69a771964e3f03e12.jpg]({{site.baseurl}}/assets/images/8316b24bc9d444c69a771964e3f03e12.jpg)

![64c37945791542d7b2b645db92b64dff.jpg]({{site.baseurl}}/assets/images/64c37945791542d7b2b645db92b64dff.jpg)

![f143d952c8be44cda77a1b5563246f23.jpg]({{site.baseurl}}/assets/images/f143d952c8be44cda77a1b5563246f23.jpg)
