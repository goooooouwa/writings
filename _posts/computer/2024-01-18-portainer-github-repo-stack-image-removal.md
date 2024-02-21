---
published: true
title: 'Issue: Portainer GitHub repo stack not able to pull update'
category: computer
tags: portainer docker issue
---
### Issue: Portainer GitHub repo stack not able to pull update

issue描述：

Portainer GitHub repo stack如果远端仓库是通过build本地image的方式compose container的话，首次创建会在本地产生build image。后续当远端仓库产生了修改，本地如果直接pull to update无法拉取最新更新。

root cause：

原因推测是因为Portainer无法识别本地build image与最新commit的版本差异，认为本地build image是最新版，每次pull to update都会跳过build过程，直接基于本地build image生成container。这样的问题是container里的代码和数据依然是老的commit，永远无法拉取最新的commit。

解决办法：

删除本地build image，再pull to update。
