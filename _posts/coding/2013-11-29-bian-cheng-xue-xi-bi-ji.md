---
category: coding
date: 2013-11-29
title: 编程学习笔记
---
## Linux system cross-compiling dependencies

**Cross-tool = cross compiler & cross Binutils & target C library.**

cross compiler <= native toolchain & target C library

cross Binutils <= native toolchain

target C library <= target Linux kernel headers & bootstrap cross compiler

bootstrap cross compiler <= native toolchain 

target Linux kernel headers <= none

 

**Target Linux system = target Linux kernel & target C library & target system applications( Busybox) & file system**

target system applications( Busybox) <= cross compiler & cross Binutils & target C library

file system <= native disk tool

target Linux kernel <= cross compiler & cross Binutils

note:

target means build target.

native means runs on host. 

cross means runs on host, build product for target.



##  Vim的ex命令

以冒号开始的命令实际上是ex命令。ex与vim命令是同一编辑程序的两个不同的用户界面。vim提供面向屏幕的用户界面，而ex则提供面向命令行的用户界面。所有的ex命令均可在vim中使用。



## Application Protocols

World Wide Web: HTTP( Hypertext Transfer Protocol)

Streaming audio and video: RTP( Real-time Transport Protocol)

Instant messaging: XMPP( Extensible Messaging and Presence Protocol)

Voice communication: VoIP( Voice-over-Internet Protocol)

Online gaming: 文本协议：HTTP，二进制协议：Protocol Buffer, Apache Thrift

服务端软件其实大同小异，都需要接收请求，处理请求，返回请求。



## Bash expansion

在bash中，命令参数会先被bash处理，再传递给命令。参数如果是正则表达式则会被bash替换成满足该表达式的结果，如果希望正则表达式不会bash处理，整个传递给命令，则需用引号括起来，bash不会处理引号内的内容。



## 理解Gradle build script

![https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/nONnsql.jpg](https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/nONnsql.jpg)

## Gradle Plugin Portal vs Maven Central Repository

Gradle Plugin Portal

存放Gradle plugins, e.g. org.springframework.boot:spring-boot-gradle-plugin

Maven Central Repository

存放项目依赖，e.g. org.springframework.boot:spring-boot-starter-web

## Understand IDEA IDEs diff colors

![https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/MI94rMA.png](https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/MI94rMA.png)

## What’s IntelliSort

![https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/1KbnvF1.png](https://goooooouwa.oss-cn-beijing.aliyuncs.com/img/1KbnvF1.png)

If this option is enabled, you get a more convenient way to view merges by displaying the incoming commits first, directly below the merge commit.

## What is viewport?

Viewport 就是视窗的像素宽。浏览器会根据视窗的像素宽来对页面布局。