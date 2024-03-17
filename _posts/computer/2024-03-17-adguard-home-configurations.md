---
title: openwrt旁路由模式SSR Plus和Adguard Home的配置
category: computer
tags: openwrt adguard-home ssr-plus
published: true
---
openwrt旁路由，SSR plus + adguard-home 基本配置如下：
1. 旁路由不使用HDCP
1. adguard-home重定向规则也没有改，默认作为dnsmasq的上游服务器（估计对于旁路由也用不着）
1. 直接简单粗暴的在SSR plus的国内国外DNS同时设置为adguard-home的ip端口，比如：127.0.0.1:1745（具体端口看日志输出）

adguard-home内设置：
1. 上游DNS：主路由DNS
1. 速度限制：0
1. 勾选ENDS，DNSSEC
1. 过滤器黑名单随意添加几个（至少1个国外1个国内即可）
