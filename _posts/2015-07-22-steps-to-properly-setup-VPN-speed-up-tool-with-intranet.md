---
layout: post
title: Steps to properly setup VPN speed up tool with intranet
categories:
    - Network
---

1. install VPN speed up tool as normal

2. use company DNS servers for VPN connection:

![use_company_dns_servers]({{ "/assets/images/2015-07-22-steps-to-properly-setup-VPN-speed-up-tool-with-intranet/use_company_dns_servers.png" | absolute_url }})

3. add the following line to /etc/ppp/ip-up:

`route add 10.0.0.0/8 "${OLDGW}"`

4. add the following line to /etc/ppp/ip-down:

`route delete 10.0.0.0/8 ${OLDGW}`



基本上讲就是

1. 使用内网DNS解析网址
2. 将内网ip路由给本地网络

这样内网网址就会被内网DNS解析得到对应的内网ip，然后在本地网络访问此内网ip，就成功访问了。