---
published: true
title: 'Workaround: 如何解决OneDrive, Dropbox或Google Sync的文件夹没有同步状态提示的问题'
category: computer
---
TL;DR: 如果你有遇到OneDrive, Dropbox或Google Sync的文件夹没有同步状态提示的问题，本文提供了一个workaround。

我的公司电脑很长时间都存在这个问题，而自己其他电脑则正常，苦于网上搜索的方法都无法解决，以为自己是个例。最近由于电脑故障送修，结合期间使用备用机，先后3次setup电脑的经历中都遇到了同样的问题，就开始怀疑是某种通病，起先怀疑的是Google File Stream，后来发现原来是Sophos Finder Scan。这一下子就都解释得通了。好在Workaround也比较简单（见文末）。后来找到了证实，原来这是一个Sophos的known issue: https://support.sophos.com/support/s/article/KB-000038112

问题描述：
公司电脑上的OneDrive, Dropbox或Google Sync所同步的文件夹没有同步状态的提示图标。

Expected（正常显示的同步状态的提示图标）:
![Expected](https://i.imgur.com/KZGuyYz.png)

Actual（同步状态的提示图标没有显示）:
![Actual](https://i.imgur.com/jlf1BGf.png)

问题原因（原因分析纯个人判断，如有误欢迎指正）：
Sophos Finder Scan的Finder extension影响了OneDrive, Dropbox和Google Sync的Finder extension的正常工作，导致同步状态的图标不显示。

Workaround:
Step 1: 取消勾选Sophos Finder Scan
![Step 1](https://i.imgur.com/Kllt6lH.png)

Step 2: 将Sophos Finder Scan再勾选回去
![Step 2](https://i.imgur.com/miXpbKF.png)
