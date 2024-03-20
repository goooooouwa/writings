---
title: 如何在SSR Plus下使用Adguard Home过滤广告的同时避免DNS污染
category: computer
tags: adguard-home openwrt ssr-plus dns
published: true
---
我当前的网络结构是：
1. Openwrt旁路由作为网关管理所有的网络请求
2. SSR Plus负责国内外请求分流
3. SSR Plus的国内和国外DNS都设置为Adguard Home的服务ip端口地址
4. Adguard Home的上游DNS设置为了主路由DNS

遇到的问题是，访问一些国外网站时，DNS域名找不到，比如：
- raw.githubusercontent.com
- yt3.googleusercontent.com

刚开始以为是Adguard Home过滤规则误伤了。后来搜索Adguard Home查询记录发现这2个域名并没有过滤或拦截这两个域名，是正常解析的。结合这2个域名的特点，都是国外主流的服务，看起来像是DNS被污染了，才导致查不到域名ip。

这让我意识到，Adguard Home的上游DNS不能设置为主路由DNS（上游其实是本地电信运营商的默认DNS），国内运营商的DNS是很会被污染的。我需要将上游DNS配置成采用HTTPS的安全DNS，比如：
- https://dns.google/dns-query
- https://dns.alidns.com/dns-query

那么，问题来了，该如何配置SSR Plus来使用不受污染的DNS分别来解析国内和国外的域名呢？由于只有一个Adguard Home的instance，该如何为国外和国内的DNS请求分流呢？即让国内的请求走国内的安全DNS，国外的请求走国外的安全DNS？

管不了那么多了，统一给我用Google的安全DNS吧，哪怕可能会慢一点，至少不会被DNS污染。统一设置成Google安全DNS之后，就能正常访问以上被污染的域名了。

后来，我又在Adguard Home的上游DNS里加上了阿里的安全DNS，Adguard Home使用负载均衡规则自动选择DNS。目前使用了一段时间，并没有遇到DNS污染。以后有啥新发现再记录吧。

