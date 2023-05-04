---
date: 2018-12-25
title: 是否可以比计划中提前地准备下个月第1个iteration卡？
layout: post
category: agile
tags: agile product_management
---

## TLDR

计划做得要尽可能的晚，降低实施前计划发生变化的可能性，提高计划的稳定性。所以即使可以提前，最好还是不要提前。

## Longer version

只有识别出了某 iteration 中需要 spike 的卡才能知道某 iteration 中哪些卡是（没有风险）可以开始设计的，才能开始该 iteration 卡的准备。
而发现下个月第 1 个 iteration 中有哪些卡需要 spike 的最早时间点是敲定下个月的 release plan 的时候（更早的 roadmap planning 不可能发现所有的需要 spike 的点）。因此问题等价于：是否可以比计划中提前地敲定下个月的 release plan？

理想情况下，下个月的 release plan 发生在这个月的第 1 个 iteration 的第 2 周的周一上午（这个月第 2 个 iteration 的 IPM 发生在这个月的第 1 个 iteration 的第 2 周的周一下午。两个会之间有几个小时可以准备 spike 卡的内容）。

而下个月的 Release plan 最早只能发生在这个月的第 1 个 iteration 的第 1 周的周一上午，否则计划太远容易变。

回答推导问题：是否可以比计划中提前地敲定下个月的 release plan？

可以。下个月的 Release plan 最早可以发生在这个月的第 1 个 iteration 的第 1 周的周一上午，比计划中提前一周时间。只是这个时间点定的 release plan 会比理想时间下定的 release plan 早一周，稳定性会下降一些。

所以，回答原始问题：是否可以比计划中提前地准备下个月第 1 个 iteration 卡？

可以。最早提前一周（同时下个月的 release plan 提前一周，在 release plan 之后即可开始准备下个月第 1 个 iteration 卡）。只是这个时间点定的 release plan 会比计划中制定的 release plan 稳定性下降一些。

题外话
下个月的 Release plan 最晚发生在这个月第 2 个 iteration 的 IPM 之前，这样才能提前 1 个 iteration 将下个月 release plan 中需要 spike 的卡完成 spike（保证 release plan 能按计划的卡优先级的顺序完成），否则只能将需要 spike 的卡挪到下个月的第 2 个 iteration（影响 release plan 计划的卡的优先级顺序），当然这也勉强可以接受。

是否可以比计划中提前地准备下个月第 2 个 iteration 卡？

可以。最多可以提前 2 周（？）。因为在此之前 spike 已经完成了。只是卡的稳定性会下降（因为距离 iteration 真正发生的时间更远）。
但最好不要，因为计划中每个 iteration 已经提前 2 个迭代开始准备了。再提起计划内容的稳定性就太低了。
