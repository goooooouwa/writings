---
published: true
title: Openwrt旁路由设置（ip动态伪装）
category: computer
tags: openwrt
---
test1

### ip动态伪装（等价于iptables masquerade命令)

Openwrt如果不设置ip动态伪装，则无法从内网访问国内网站（但是可以正常科学上网）。

Openwrt只有设置了ip动态伪装或marsquerade命令，才能从内网访问国内网站（同时可以正常科学上网）。但此设置带来的问题是外网无法访问内网ip（即使设置了端口转发），导致内网的服务器无法被外网访问。

一个解决办法是将内网服务器的网关和dns手动指向主路由，不经过旁路由处理，则可以被外网正常访问。这么做的优点是服务器不经过旁路由连接更稳定，缺点则是服务器无法利用旁路由科学上网（可以考虑同时打开主路由科学上网）。
