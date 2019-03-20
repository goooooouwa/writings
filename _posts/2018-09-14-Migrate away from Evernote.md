---
layout: post
title: 'Migrate away from Evernote'
category: productivity
---

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
| 文件     | 图片、PDF、音频、Zip包       | 身份证、体检报告、网页快照     | 记录、保存 as is     | 原创、转载 | 存储到文件系统，Evernote只保存可编辑内容         |
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