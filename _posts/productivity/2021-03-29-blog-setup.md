---
category: productivity
title: 我的博客setup
tag: setup
published: true
---


## 背景

大学时我开始有了一些写作的需求，因此希望有一个自己的博客来发布写作的内容。2010年到2016年，我曾经先后使用过Google Blogger、Tumblr、Medium作为自己的博客，可是在使用一段时间之后，当我想将博客文章迁移到其他博客平台时，我发现这些博客平台普遍存在几个令我很头疼的问题：

1. 导出的文章为html文件，内容跟样式混杂在一起，可读性很低
2. 我需要将导出的文章手动导入到新的博客系统（或者需要进行一定格式的调整）
3. 自己定制过的主题样式相当于浪费了

在尝试过这几款主流的博客平台后，我一度对这些博客平台失去了信心，觉得自己的内容被锁定在了特定的平台上。直到有一天我偶然看到一篇博客（类似[这篇](https://github.com/paintedsky/dead-simple-blog)），作者介绍了自己如何使用简单的文本文件作为自己的博客。看了这篇文章后我深受启发，我意识到，原来博客还可以这么玩（很像Unix的一切即文件哲学）。

至此我才意识到，我对一个博客系统有着一个不可妥协的需求点：

1. 数据独立性，即文章导出后不需要额外处理直接可以查看或者导入其他系统。

而如果这样一个博客系统需要自己动手搭建的话，我还有一个强烈的需求就是：

1. 最小代码，即该系统不需要或者需要极少的代码编写来完成，包括：主题、评论、站内搜索等，个性化定制。

在寻找和比较了几款博客系统后，我最终选择了Jeklyll，因为它：

1. 支持使用markdown文件自动生成博客文章，文本文件是最通用的数据结构，因此有着很好的数据独立性。

2. Jekyll插件生态不错，各种功能基本都有现成工具可用，减少了代码的编写。

## 我写博客的工作流

<div class="mermaid">
    graph TD
    T1[Workflow 1: Create/edit blog posts] -.-> A

    A[Create/edit post in Prose.io] --> B
    B[Commit changes to github repo]
    B --> C[Trigger Github actions to build and deploy the blog to github pages]
</div>

## 配置一览

| 功能组件        | 当前配置                   | 过往配置                                                     | 其他尝试                                                     |
| --------------- | -------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 博客系统        | Jekyll                     |                                                              | wordpress, hexo                                              |
| Pipeline        | Github actions             | Github pages                                                 |                                                              |
| 主题            | Jekyll minima latest (3.x) | Jekyll minima 2                                              | [TeXt](http://jekyllthemes.org/themes/TeXt/), [Jalpc](https://github.com/jarrekk/Jalpc) |
| 评论工具        | utterances                 | disqus                                                       |                                                              |
| 图床            | imgur                      | 本地图片                                                     | https://cloudinary.com/                                      |
| 站内搜索        | Google Custom Search       |                                                              |                                                              |
| 图表            | Chart.js                   |                                                              |                                                              |
| 图示            | mermaid.js                 | [jekyll-spaceship](https://github.com/jeffreytse/jekyll-spaceship) |                                                              |
| 内嵌YouTube视频 | YouTube embedded code      | [jekyll-spaceship](https://github.com/jeffreytse/jekyll-spaceship) |                                                              |
| 域名            | 阿里云                     | github.io                                                    |                                                              |

## 配置详情

#### 博客系统

| 配置选项  | Pro                            | Con                          | Comment                                                      |
| --------- | ------------------------------ | ---------------------------- | ------------------------------------------------------------ |
| Jekyll    | 简单，可靠，插件生态不错       | 编译慢，文章多了需要性能调优 |                                                              |
| hexo      |                                |                              | 冲着构建速度快试用了一下，也觉得node.js比Rails更有未来，试用了一下，感觉没想象中优秀，具体也不记得了 |
| Wordpress | 生态强大，能导出文章为markdown | 不够纯粹                     |                                                              |

#### Pipeline

| 配置选项       | Pro                        | Con                                                          | Comment              |
| -------------- | -------------------------- | ------------------------------------------------------------ | -------------------- |
| Github actions | 灵活，自由，支持各种自动化 |                                                              | 需要自己编写workflow |
| Github pages   | Github原生支持，自动       | 不支持github pages whitelist以外的Jekyll插件，比如paginate v2 |                      |

#### 主题

| 配置选项      | Pro                                      | Con                                     | Comment |
| ------------- | ---------------------------------------- | --------------------------------------- | ------- |
| Minima latest | 简洁，功能够用                           | 不支持Github pages自动构建              |         |
| Minima 2      | 简洁，Github pages原生支持               | 老旧了，有些功能不支持，比如paginate v2 |         |
| TeXt          | 好看，功能非常丰富，比如支持Chart.js图表 | 臃肿，文档支持不够完善                  |         |

#### 评论工具

| 配置选项   | Pro                                | Con        | Comment                       |
| ---------- | ---------------------------------- | ---------- | ----------------------------- |
| utterances | 支持国内访问，数据中立，简洁，好用 |            | 使用Github issues作为评论系统 |
| disqus     | 免费，支持各种Social login         | 干扰信息多 |                               |

#### 图床

| 配置选项 | Pro                               | Con                                       | Comment                           |
| -------- | --------------------------------- | ----------------------------------------- | --------------------------------- |
| imgur    | 免费，无干扰，无限空间，简单      | 不支持国内访问                            | 使用mac2imgur app拖拽图片直接上传 |
| 本地图片 | Accessibility，文档和图片数据集中 | 图片repo空间的scale问题，以及网络访问速度 |                                   |

#### 站内搜索

| 配置选项             | Pro        | Con                                                 | Comment                  |
| -------------------- | ---------- | --------------------------------------------------- | ------------------------ |
| Google Custom Search | 免费，自动 | 不支持国内访问，索引更新周期长，样式与Bootstrap冲突 | 相当于同时做了Google SEO |

### 域名

| 配置选项   | Pro                           | Con               | Comment |
| ---------- | ----------------------------- | ----------------- | ------- |
| 阿里云域名 | 支持国内访问，便宜            | 需要额外配置https |         |
| github.io  | Github pages自带，自动，https | 不支持国内访问    |         |

## 对Jekyll minima主题的自定义

本着最小代码的原则，仅对Jekyll minima主题做了如下必要修改：

1. 主题本地化
2. Google custom search style fix

To fix the Google custom search style issue, I wrote this little script`google-custom-search-style-fix.scss`:

```scss
---
---
.google-custom-search {
  table {
    margin-bottom: initial;
    width: initial;
    text-align: initial;
    color: initial;
    border-collapse: initial;
    border: initial;
    tr {
      &:nth-child(even) {
        background-color: initial;
      }
    }
    th,
    td {
      padding: initial;
    }
    th {
      background-color: initial;
      border: initial;
      border-bottom-color: initial;
    }
    td {
      border: initial;
    }
  }
}

```

## 自己开发的小工具

为了将我的evernote笔记迁移到Jekyll，我需要：

1. 将evernote导出的html文件转化为markdown格式

2. 添加front matter以导入Jekyll

我在尝试多种工具都不理想后，自己写了一点脚本来帮助完成这项工作

1. [evernote to markdown](https://github.com/goooooouwa/evernote2markdown):
   - convert evernote to markdown
   - jekyll front matter generator

## Todo

- [ ] 轻松为markdown文件添加front matter

- [ ] 为markdown文件生成带日期的文件名

- [ ] 为markdown文件添加带连字符的英文名
