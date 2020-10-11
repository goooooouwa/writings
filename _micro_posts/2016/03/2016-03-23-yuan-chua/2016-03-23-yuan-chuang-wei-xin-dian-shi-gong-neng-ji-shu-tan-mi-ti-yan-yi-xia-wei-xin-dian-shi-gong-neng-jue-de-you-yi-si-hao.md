---
title: "【原创】微信摇电视功能技术探秘"
published: false
---
【原创】微信摇电视功能技术探秘

体验了一下微信摇一摇电视功能，觉得很有意思，很好奇这是怎么的做到的。我的猜测是，电视台在节目的声音中加入人耳听不见的高（低）频音，在其中包含节目信息，微信客户端通过手机麦克风便可识别节目。
为了验证我的猜测，我在微信官网找到了微信摇电视功能的操作文档（http://yaotv.qq.com/shake_tv/protal/doc/signalAccessGuide20150420.pdf）。仔细阅读文章之后才发现，原来我的猜测是错的。
文档中指出：“摇一摇功能通过实时比对用户端和服务端电视音频实现，因此需要合作方通过接口把电 视实时播出的信号源音频接入到我方服务器。”
所以实际上微信摇电视功能的实现方式是：电视台除了将电视信号给普通观众看以外，还需要同时将信号发给微信的服务器。当用户对电视台使用微信摇一摇时，微信客户端通过手机麦克风录下一小段电视节目的声音并发送给微信服务器，服务器通过对比用户上传的节目声音与各个电视台实时传来的节目声音进行对比，成功找出匹配的节目。最后将节目的互动信息发送给用户。



![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/1.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/2.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/3.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/4.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/5.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/6.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/7.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/8.jpg" | relative_url }})
![]({{ "/assets/images/2016/03/2016-03-23-yuan-chua/9.jpg" | relative_url }})