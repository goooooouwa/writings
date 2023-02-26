---
title: exiftool的使用方法
layout: post
category: computer
published: true
---

[exiftool](https://exiftool.org/) 可以查看、批量修改媒体文件的EXIF信息。

## 安装

### Windows

**The stand-alone Windows executable** does not require Perl. Just download and un-zip the archive then double-click on "`exiftool(-k).exe`" to read the application documentation, drag-and-drop files and folders to view meta information, or rename to "`exiftool.exe`" for command-line use. Runs on all versions of Windows.

下载Windows Executable（可执行程序），解压后将"`exiftool(-k).exe`"重命名为"`exiftool.exe`"，移动到"`C:\WINDOWS`"目录（或者其他PATH路径）以便直接从CMD命令行访问。

## 基本使用

### 1. 查看文件Exif信息

语法

```
exiftool File
```

例子：

```
exiftool H:\Personal\Photos\OrganizedPhotos\2021\2021_01\2021_01_23\IMG_0974.JPG
```

范例输出：

```
ExifTool Version Number         : 12.22
File Name                       : IMG_0974.JPG
...
File Modification Date/Time     : 2021:01:24 00:14:56+08:00
File Access Date/Time           : 2021:03:20 13:49:50+08:00
File Creation Date/Time         : 2021:03:20 13:49:49+08:00
...
Date/Time Original              : 2021:01:23 16:04:56
Create Date                     : 2021:01:23 16:04:56
...
Profile Date Time               : 2017:07:07 13:22:32
...
Create Date                     : 2021:01:23 16:04:56.991+08:00
Date/Time Original              : 2021:01:23 16:04:56.991+08:00
Modify Date                     : 2021:01:23 16:04:56+08:00
...
```

### 2. 修改文件Exif信息

例子：将某个目录内所有照片和视频的`File Create Date`, `Create Date` 和 `Media Create Date`统一修改为creationDate（真正的拍摄时间）

```
exiftool "-FileCreateDate<CreationDate" "-CreateDate<CreationDate" "-MediaCreateDate<CreationDate" -r H:\Personal\Photos\OrganizedPhotos\2021\2021_01\2021_01_23
```

### 3. 重命名文件

语法

```
exiftool "-FileName<CreateDate" DIR
```

例子：将某个目录（及所有子目录）内的照片和视频按照拍摄时间重命名

```
exiftool '-filename<CreateDate' -d %Y-%m-%d_%H%M%S%%-c.%%le -r H:\Personal\Photos\OrganizedPhotos\
```

