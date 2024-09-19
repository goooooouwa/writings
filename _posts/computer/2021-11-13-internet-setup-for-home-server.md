---
title: 教程：如何通过公网访问家庭服务器
category: computer
published: true
tags: home-server modem router superadmin
---

#### Access over Internet

1. 获取电信光猫superadmin账号密码，上网方式从路由改为桥接，关闭光猫无线功能，光猫仅仅做一件事情：光电转化（tried 光猫上的端口转发，不 work）
2. 由其桥接的主路由器RT-AC86U进行拨号上网
3. 其他路由器以 AP 模式接入主路由器
4. 其他路由器暂时关闭无线功能（一方面华硕主路由器信号已经不错，另一方面，没有 Mesh 功能，多个无线网络无法无缝漫游，以后需要再打开，手动切换）
5. 主路由器打开端口转发
