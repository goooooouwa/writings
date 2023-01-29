---
title: 教程：使用Let's Encrypt + freedns为RT-AC86U路由器及其他服务器颁发SSL证书
category: computer
published: true
tags: home-server 破解
---

相关文章：[搭建家庭娱乐服务器]({% post_url /computer/2021-11-14-home-media-server-setup %})

关键约束：

1. 国内家用宽带80、433端口都被电信封了，无法使用HTTP方式进行Let's Encrypt验证，只能使用DNS验证方式（而且这种方式要求DNS服务支持通过API方式修改DNS record，才能做到通过acme客户端全自动更新证书，否则需定期人工操作）-> 因此需要一个支持API的DNS provider
2. 尽管CloudFlare提供免费的DNS服务，但华硕路由器不支持CloudFlare as DDNS
3. 华硕路由器也不支持aliyun DNS和腾讯dnsPod as DDNS -> 只有freedns满足：  
  - a) 支持API方式修改DNS record
  - b) 支持DDNS
  - c) 华硕路由器支持该DNS provider作为DDNS
  此外freedns还是免费的（只要将domain设置为shared）
4. 你需要拥有一个domain（才能将它的DNS nameserver配置为freedns）-> 因此需要购买一个domain，正好freenom提供免费的一年domain

前期准备：

1. Get a domain (free with freenom)
2. Setup dns nameservers for domain (free with freedns if domain shared)
3. Enable DDNS for the domain in freedns (free)
4. Install [acme.sh](https://github.com/acmesh-official/acme.sh) on your server (mine is a Raspberry Pi with OMV and Portainer)

为RT-AC86U路由器颁发SSL证书

1. Configure asus router to use freedns as ddns (username, password, domain name)
2. Use acme.sh to do auto DNS validation for Let's Encrypt with freedns (as 80 & 443 ports are blocked by ISP, can only choose DNS challenge)
3. Upload the fullchain cert and private key in the DDNS settings page (need to re-upload if new cert issued)

为其他服务器颁发SSL证书

1. Setup acme.sh on a server to automatically issue Let's Encrypt certificate for domain (cert and private key files will be stored on server)
2. Open Media Vault: copy and paste the fullchain cert and private key in the admin page (need to manual update if new cert issued)
3. Portainer: upload the fullchain cert and private key in the settings page (need to re-upload if new cert issued)
4. For the containers, e.g. nginx, plex etc, just reference the fullchain cert and private key stored in `~/.acme.sh/` directory (just restart the containers if new cert issued)
