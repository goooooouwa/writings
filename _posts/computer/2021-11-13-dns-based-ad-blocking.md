---
title: 基于DNS的Ad blocking方案体验
category: computer
---

1. Diversion 貌似不支持386版本merlin
1. Koolproxy 规则不更新了，KoolproxyR不支持merlin
1. Adguard Home works on Raspberry Pi 3B
1. Pi-Hole not sure if it's working, but Adguard Home is easier to use.

Overall, these Ad blocking solutions for Router are all based on DNS holesink. 实际使用效果并不算理想，可以屏蔽一些网站的广告，可以屏蔽部分视频网站的广告，但是一些视频网站，比如YouTube，优酷的视频广告无法屏蔽。

## Conclusion

Adgaurd Home works best among the four, but the DNS based ad blocking solution doesn't work so well for certain website ads and especially popular video sites, such as YouTube.

## 对Ad blocking工具的一点认识

Ad blocking技术难度在于内容提供商也在不断突破Ad blocking，加大广告屏蔽难度，所以Ad blocking的规则需要经常性的更新才能保持有效。
