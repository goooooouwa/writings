---
title: 家庭网络文件共享方案
layout: post
categories:
  - Coding
---

## Background

Current Situation:

我电影漫画都存在硬盘上，想用iPad/iPhone看电影、漫画。目前需要连接硬盘和设备到电脑上拷贝。

Ideal Situation:

躺在床上，直接用iPad浏览硬盘上的文件，stream on demand到设备上看。

## Solution Idea

Samba Server & Client for wireless streamming.

### Samba Server Solutions Comparison

| Samba Server                       | Pros                                 | Cons                                                         | Recommend?    |
| ---------------------------------- | ------------------------------------ | ------------------------------------------------------------ | ------------- |
| NAS网盘：希捷（不含硬盘）400元     | Reliable, always on                  |                                                              | 👍 good        |
| Raspberry Pi with OpenMediaVault 4 |                                      | setup issues: fuse module fail to load                       | 👎 not working |
| Raspberry Pi with Raspbian         | works after setup                    | linux disrupts exFAT disk, Raspberry Pi wireless speed around 500KB/s (ethernet speed 1MB/s) | ✋ doable      |
| Windows PC folder sharing          | Simply works, wireless speed 1.5MB/s |                                                              | 👍 good        |

### Samba Clients Comparision

| Samba Client        | Pros                                                  | Cons                    |
| ------------------- | ----------------------------------------------------- | ----------------------- |
| FE file explorer    | UI easy to use, transmission faster with progress bar | Only one server         |
| Documents by Reedle | Free                                                  | slow file transimission |

## Recommeneded Setup

After tried several server setups and clients, I recommend the following for my current needs. I will consider dedicated NAS server if this doesn't fulfill my needs.

- Server:
  - NAS server or Windows PC folder sharing

- Client:
  - VNC viewer (Remote desktop)
  - Terminus (Terminal for iOS)
  - FE file explorer (Samba File managr for iOS)

