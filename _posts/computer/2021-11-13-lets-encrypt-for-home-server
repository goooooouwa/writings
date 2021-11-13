---
title: "教程：使用Let's Encrypt + freedns为RT-AC86U路由器颁发SSL证书"
category: computer
---

关键约束：

1. 国内家用宽带80、433端口都被电信封了，无法使用HTTP方式进行Let's Encrypt验证，只能使用DNS验证方式（而且这种方式要求DNS服务支持通过API方式修改DNS record，才能做到通过acme客户端全自动更新证书，否则需定期人工操作）-> 因此需要一个支持API的DNS provider
2. 尽管CloudFlare提供免费的DNS服务，但华硕路由器不支持CloudFlare as DDNS
3. 华硕路由器也不支持aliyun DNS和腾讯dnsPod as DDNS -> 只有freedns满足：a) 支持API方式修改DNS record, b) 支持DDNS, c) 华硕路由器支持该DNS provider作为DDNS，而且freedns还是免费的（只要将domain设置为shared）
4. 你需要拥有一个domain（才能将它的DNS nameserver配置为freedns）-> 因此需要购买一个domain，正好freenom提供免费的一年domain

具体步骤：

1. Get a domain (free with freenom)
2. Setup dns nameservers for domain (free with freedns if domain shared)
3. enable DDNS for the domain in freedns (free)
4. configure asus router to use freedns as ddns (username, password, domain name)
5. use acme.sh to do auto DNS validation for Let's Encrypt with freedns (as 80 & 443 ports are blocked by ISP, can only choose DNS challenge)
6. use acme.sh to issue Let's Encrypt certificate for domain (cert and private key files will be stored on server)
7. copy the content of fullchain cer and private key to apply the certificate on target server, e.g. OMV, nginx, etc.
