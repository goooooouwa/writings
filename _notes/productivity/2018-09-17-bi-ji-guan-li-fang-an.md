---
category: productivity
date: 2018-09-17
title: 笔记管理方案
---

2018-09-17-things-evernote-not-good-at

Evernote不适合做的事

Evernote可以做很多事，比如：

- 项目管理
- 文本编辑器
- 提醒事项 
- 文件存储
- 文章收集
- 书签管理

但在我使用Evernote很久后，我逐渐发现有比Evernote更适合的工具： 

- 项目管理：在线协作平台，如Google Docs
- 文本编辑器：Markdown编辑器，如Typora
- 提醒事项：单独的Todo app，如iOS Reminders
- 文件存储：网络硬盘，如iCloud Drive
- 文章收集：Read it Later服务，如Instapaper
- 书签管理：浏览器书签或书签服务，如Chrome Bookmarks

## 结论

Evernote最擅长做的是笔记的存储，专业的事还是该交给专业的工具去做。可以将其他工具与Evernote结合使用（通过类似IFTTT的服务）。

2018-09-17-how-to-organize-notes

如何整理笔记：理论与实践

## 笔记管理的理想状态

### 笔记内容

- 格式统一
- 标题表意
- 内容纯粹（省去无关内容）

### 笔记组织

理想的笔记组织具有以下三个属性。

#### 还原

能将笔记还原到诞生的上下文中，比如书籍和文章，便于还原回忆。如果上下文与内容无关则不必，比如网页片段，能链接回原页面。

#### 提炼

便于将笔记形成大纲outline或mindmap，以表明内容关系，提炼overview。

#### 温习

便于将笔记做成Flashcards，便于巩固记忆。

![how-to-organize-notes](https://i.imgur.com/yo3TQnE.png)

## 实践方法

如何针对所有类型（书籍，文章，内容片段）的学习笔记做到以上几点？

### 笔记管理workflow

#### Step 1：记笔记

直接在知识上下文中记笔记，上下文包括：

* 电子书：iBooks、Kindle
* PDF文档：Preview
* 文章：Instapaper
* 网页片段：Evernote Web Clipper
* 图片：Skitch

#### Step 2：存储笔记

将各处笔记导入Evernote统一存储，方法如下：

* ePub：iBooks app分享笔记，按书籍为单位存储笔记
* mobi：Kindle app分享笔记，按书籍为单位存储笔记
* PDF：[skim](https://skim-app.sourceforge.io/)提取笔记，按文档为单位存储笔记
* Instapaper：[Instapaper highlights exporter](https://chrome.google.com/webstore/detail/instapaper-highlights-exp/oiklmlodhebcmaijgmheoafagfhbeohm)，按文章为单位存储笔记
* 网页片段：直接保存，按网页为单位存储笔记
* 图片：直接保存

#### Step 3：提炼Overview

将笔记导出，整理成outline或mindmap，方法如下：

* outline：
    1. 将相关笔记生成Table of Contents
    2. 将标题整理成outline，以Markdown格式保存
* mindmap：
    1. 将Markdown格式outline导入生成mindmap

#### Step 4：温习

将笔记导出，使用Flashcards（比如Reflect app）温习笔记

<iframe src="http://www.xmind.net/embed/Ng8c" width="900px" height="540px" frameborder="0" scrolling="no"></iframe>

---

Note: 以上理想笔记管理思路来自于[MarginNote](https://marginnote.com/)的all in one place笔记法。

![margin-note-all-in-one-place](https://i.imgur.com/RJOY6rJ.png)


2018-09-14-Migrate away from Evernote

## Evernote organization 2018/9/14

File types extracted out of Evernote:

* Articles -> Instapaper
* Bookmarks -> Browser (backup as HTML files)
* Blog posts -> markdown files
* Favorite Articles -> Pages documents (exportable to ePub & azw3 & PDF files)
* documents -> iCloud Drive

Evernote focusing on taking notes( text, handwriting script)

Convert:
Handwritten script to text(OCR): Google Translate
Voice to text: Keyboard Dictation

Text to voice: iOS accessibilty


## note types

待整理笔记的类型分析：

| 类型     | 格式                         | 例子                           | 用途                 | 性质       | 改进建议                                         |
| -------- | ---------------------------- | ------------------------------ | -------------------- | ---------- | ------------------------------------------------ |
| 简单文本 | 文本、标记图片、手写笔记扫描 | 学习笔记、头脑风暴、写作、思考 | 可编辑内容           | 原创       | 当内容积累足以形成文章后，用Typora整合编辑、排版 |
| 富文本   | 网页剪切                     | 问答、知识                     | 提取内容、保存 as is | 转载       | 保存网页时，尽量简化格式，仅保留必要内容         |
| 文件     | 图片、PDF、音频、Zip包       | 身份证、体检报告、网页快照     | 记录、保存 as is     | 原创、转载｜存储到文件系统，Evernote只保存可编辑内容         |
| 书签     | 链接                         | 新闻、文章                     | 记录                 | 引用       | 用浏览器保存书签                                 |

Q：是否将网页剪切和笔记区分开？或者说，笔记中含有网页剪切或资源图片，是否属于侵权？

应该OK吧，关键是比例。根本的问题是：笔记是否具有原创属性？应该算吧。因此决定将网页剪切（全文内容除外）视作为我的笔记的一部分，即简单文本和网页剪切全都是我的原创内容。

Q：笔记是否可供他人学习？

可以，只要整理的条理清晰，有二次加工（否则别人直接看链接就好了吧）。直接publish笔记来share吧，没有想到更好的share方案。

记笔记的主要需求及解决方案：

* 将原创与转载区分开：将文章区分开，将网页剪切（全文内容除外）视作为我的笔记的一部分。
* 将信息聚合形成可consume的产出：文章、学习笔记、文件，逐步积累提炼。
* 低成本的维护方式：提取内容，不标记则无需截图
* 快速定位：tags
* 可视化：画脑图、建table of contents

场景

- 学习：遇到一个问题，上网搜索，找到有用的网页，获取只读模式的文章，get ride off clusters, 标记、注解
- 学习：遇到一个问题，上网搜索，找到有用的PDF文件，下载文件，标记、注解
- 学习：遇到一个问题，上网搜索，找到有用的电子书（ePub，mobi），下载，在电子书阅读器中阅读，记笔记
- 创作：有任何想法，随手记下来（文本、手写、白板、文档）
- 记录：存储重要信息（拍照、文本、剪切网页、图片、文件）


Q：笔记是应该strip off原始文件，还是stay with原始文件？

最好是能stay together，并且可以方便的查阅。但是有一些考虑，比如能否导出。对于ePub, mobi, pdf，笔记如果跟文件一起，因为文件比较适合放在文件系统，则笔记会跟文件走，所以会比较分散，无法search all in one place，可以考虑定期导出笔记。

### ePub, kindle电子书

ePub, kindle电子书的笔记可以和书一起Sync，也可以导出。

### PDF

PDF可以用Preview笔记，笔记可以用skim导出。

### 网页

对于网页资源这种无法stay together的文件，笔记带上原始文件的引用url也算是stay together吧，也可以随时找到原始内容，只要网页还生效。也可以考虑购买Diggo。

### 屏幕截图

屏幕截图的原始文件可能是任何东西，甚至根本不是文件，所以如果是以上列举类型，尽量不要截图strip off吧。无法找到原始文件就截图，是last resorts。


## 对笔记的分析


尝试将相关笔记提取成mindmap后，我发现笔记的本质属性：笔记是提取出来的信息片段，是零散的、不完整的、不成体系的。

一条笔记应该是关于一篇文章、一本书、一段内容的所有highlights和notes的集合，信息聚合。如果需要打散可以另行处理。

Q: 是否可能将本质上零散、不成体系的信息片段构成完整的知识体系，进而带来价值产出呢？

我自己首先要有一个知识体系，再将笔记和其他资源（文章、文件）挂载上去，才能保证知识的系统化。心里要有个谱，所以得先建立知识体系。

Q: 将笔记间high level关系提炼成outline和mindmap是否有价值？

分类、标签、搜索可以很方便的找到单个笔记，但如果没有对笔记间关系的overview，笔记本就是一堆零散的碎片。Outline和mindmap的价值就是形成笔记间的关联，这有助于知识体系的搭建。

Q: Outline，Mindmap可以用来提取笔记间的这种关系信息。挑战在于，如何在动态的笔记管理中维护这些关系信息?

维护一份Markdown格式的outline，作为single source of truth。每当修改或添加笔记标题后，生成Table of Contents，并以此更新Outline（markdown)，将更新导入mindmap。


## Kinds of writing:

Pieces information to hold privately for a while
Pieces information to hold privately permanently
Thoughts to brew for a while
Interesting thoughts to share
Original Publication (maybe turning from thoughts)
Knowledge organization ( citations, digests, screenshots)