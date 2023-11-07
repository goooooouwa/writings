---
published: true
title: 记录一次重装PVE的步骤
category: computer
tags: pve
---
## 记录这次PVE重装的所有步骤

1. Backup all vms in Stop mode to an external drive (e.g. NAS)
2. Reinstall PVE (all data cleared)  
  - set maximumvz as 0 (no local-lvm data)
  - set domain as pve@example.com
3. Connect to external drive and restore all vms
4. [Remove local-lvm](https://icn.ink/pve/20.html) (no need to do if set maximumvz as 0)
4. [PCI passthrough](https://youtu.be/t_1o0rM3S7o?si=wey-mHQo953OEHhn&t=766)
5. Install [hd-idle](https://github.com/adelolmo/hd-idle) (not sure if this is needed)
6. Upload SSL certificate