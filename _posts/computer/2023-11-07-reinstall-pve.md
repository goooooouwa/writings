---
published: true
title: 记录一次重装PVE的步骤
category: computer
tags: pve
---
## 记录这次PVE重装的所有步骤

1. Backup all vms in Stop mode to an external drive (e.g. NAS)
2. Reinstall PVE (all data cleared)  
	- set maxvz as 0 (no local-lvm data)
	- set domain as pve@example.com
3. [Remove local-lvm](https://icn.ink/pve/20.html) (no need to do if set maxvz as 0)
4. `lvextend -rl +100%FREE /dev/pve/root` ([resize pve/root](https://foxi.buduanwang.vip/virtualization/pve/1434.html) to take the whole disk space)
5. Connect to external drive and restore all vms
6. （Optional）[PCI passthrough](https://youtu.be/t_1o0rM3S7o?si=wey-mHQo953OEHhn&t=766)
7. Upload SSL certificate
8. Enable 2FA

## 关于USB硬盘休眠

如果想让虚拟机（比如OMV）自动休眠所连接的USB硬盘，需要在使用USB硬盘的虚拟机（如OMV）里安装hd-idle。

通过`/etc/fstab`挂载到虚拟机（比如OMV），开机后硬盘可能会持续运转（硬盘等持续闪烁），一段时间后会停止运转（硬盘灯常亮），10分钟后会自动休眠（硬盘灯呼吸）。

如果硬盘超过10分钟仍不休眠，依次尝试以下步骤：
1. 在虚拟机（如OMV)中禁用磁盘相关设置，包括：  
	- 高级电源管理
	- 停转时间
1. ~~PCI直通~~
1. ~~在PVE上安装hd-idle~~ (no need)

## OMV虚拟机配置

### /etc/fstab配置

```bash
# Exfat drive
# /dev/disk/by-uuid/0413-1C25             /srv/dev-disk-by-uuid-0413-1C25 exfat   defaults,nofail,uid=1024,gid=100        0 2
# /dev/disk/by-uuid/0413-1C25             /media/usb/backup exfat   defaults,nofail,uid=1024,gid=100        0 2
# /dev/disk/by-uuid/C657-6B4A             /srv/dev-disk-by-uuid-C657-6B4A exfat   defaults,nofail,uid=1024,gid=100        0 2

# Media drive
192.168.50.51:/volume1/Media             /mnt/nas nfs   defaults        0 0
192.168.50.51:/volume1/homes             /mnt/homes nfs   defaults        0 0
192.168.50.51:/volume2/Games             /mnt/games nfs   defaults        0 0
192.168.50.51:/volume2/Backup             /mnt/backup nfs   defaults        0 0
192.168.50.51:/volume2/CloudNAS             /mnt/cloud nfs   defaults        0 0

# >>> [openmediavault]
/dev/disk/by-uuid/A8E7-EFD6             /srv/dev-disk-by-uuid-A8E7-EFD6 exfat   defaults,nofail 0 2
# <<< [openmediavault]
```

### /etc/crontab配置

```bash
15 3    1 * *   root    RESTIC_PASSWORD=****** restic -r /srv/dev-disk-by-uuid-A8E7-EFD6/restic-repo backup --verbose /mnt/nas/Personal /mnt/homes /mnt/nas/calibre-manga-library /mnt/nas/calibre-book-library /mnt/nas/public /mnt/backup/backup >> /home/admin/restic-log.txt
```
