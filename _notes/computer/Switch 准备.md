---
category: computer
---
# Switch 准备

## switch RCM 准备

[x]下载YouTube app

[x]忘记所有网络连接

[x]打开飞行模式

[x]充满电

[x]为了减少插入jig的次数，尽量先将sysNAND一切准备好，做好以后再也不进入sysNAND的准备。因为每次重启进入sysNAND，下次想进入emuNAND就需要插入jig，可能会损坏机器轨道。

**if you want unthethered CFW, keep FW as low as possible**

If you want the chance to maybe, one day, not have to use a external device, then it is recommended to stay on a FW as low as possible. Beware that this means that you potentially need to wait for a very long time (months to years) for this to happen, if ever.

If your Switch is one of the older hardware revisions and you don't mind having to use jigs/hardmods/AutoRCM and sending the exploit via computer, phone or dongle everytime you want to launch into CFW then it is completely safe to update.

**Use emuMMC for offline CFW use**

Atmosphere now supports emuMMC (emuNAND): a copy of Switch system software, run entirely from the SD card instead. This erases ban risks due to the fact that emuMMC is run in a quarantined, offline state, not touching the internal memory. You are still able to boot into original firmware to play online.

If you use an emuNAND for CFW and keep your sysNAND clean for playing online, you should use 90DNS on your emuNAND.

**FAT32 vs exFAT**

FAT32 is the safest, because exfat by default doesn't have any security safeties preventing partition table corruption (you can read that on Wikipedia). And Switch OS has special function that can read folder with archive attribute as file, so it's splitting >4GB files by default and put chunks to folder with archive bit even on exfat. So exfat doesn't have any pros over FAT32 on Switch.

But Switch is formatting by default to exfat larger than 32 GB (iirc) cards.

## Switch游戏

nsp 热门游戏分享，共2页，第3页补丁

https://docs.qq.com/sheet/DWEZCZnllVndYTFpO?c=D4A0A0

## 外设

便携底座

蓝牙

支架

边充电边接手柄边连蓝牙耳机

缺点：

非原装电路板

蓝牙功能需要底座接电源使用

不接电源的情况下底座可以连接有线手柄吗？

解决办法：平时作为充电蓝牙转换器支架使用，尽量不用TV模式，只在短途出差时携带作为便携底座用。

主要场景：

飞机上接手柄玩（没有电源，想充电必须有快充充电宝，而且出现频率非常低）

短期出差酒店玩（出现频率很低）

办公室桌面玩（出现频率非常低）

代替：

Type C拓展线

蓝牙转换器

支架

Saves data are stored only in two places: internal memory and cloud.
