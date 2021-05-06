---
category: productivity
title: 搭建自己的博客
tag: setup
published: true
---

* TOC
{:toc}

## 背景

大学期间我开始有了一些写作的需求，包括记录生活、分享学习笔记、一些思考和创作，因此希望有一个自己的博客来发布这些内容。从2010年开始，我先后使用过Google Blogger、Tumblr和Medium作为自己的博客，可是在使用一段时间之后，当我想将博客文章迁移到其他平台时，我发现这些博客平台普遍存在几个令我十分头疼的问题：

- 导出的文章为HTML文件，内容跟样式混杂在一起，可读性很低
- 我需要将导出的文章手动导入到新的博客系统（或者需要进行一定格式的调整）
- 自己定制过的主题样式相当于浪费了

在尝试过这几款主流的博客平台后，我一度对博客失去了信心，觉得自己的内容被锁定在了特定的平台上。直到有一天我偶然看到一篇博客（类似[这篇](https://github.com/paintedsky/dead-simple-blog)），作者介绍了自己如何使用简单的文本文件作为自己的博客。看了这篇文章后我深受启发，才知道原来博客还可以这么玩（很像Unix的一切即文件哲学）！

至此我才意识到，我对博客有着一个不可妥协的需求：

**数据独立性**，即文章导出后不需要额外处理直接可以查看或者导入其他系统。

而如果这样一个博客系统只能靠自己动手搭建的话，我期望不用花费太高的维护成本，最好支持：

**最小代码**，即该系统不需要或者需要极少的代码编写来使各种功能可用，包括：主题、评论、站内搜索等。

在寻找和比较了几款博客系统后，我最终选择了Jekyll，因为它：

1. 支持使用极具可读性的markdown文件自动生成博客文章，文本文件是最通用的数据结构，因此有着很好的数据独立性。
2. Jekyll插件生态不错，各种功能基本都有现成工具可用，减少了代码的编写。

于是2017年下半年，我开始利用业余时间基于Jekyll和Github pages搭建自己的博客。目前已经经历了3年多的小步迭代，主体功能基本都找到了趁手的工具。本文用来记录目前的Setup，日后也会更新。

## 博客发布工作流

在博客的迭代过程中，我尝试优化的最多的就是作为作者的发布工作流。毕竟我是初期使用最多的用户。

我心中理想的博客发布工作流是能**随时随地一键发布或更新文章**，这意味着我需要能通过手机发布或更新博客文章。而基于Jekyll和Github pages的博客一般发布内容都需要用到Git客户端，提交时还需要思考commit message，操作比较繁琐，所以基本依赖于电脑来完成。

而[prose.io](http://prose.io/)完美的解决了这个问题，让随时发布博客成为了可能。

我目前基于prose.io的博客发布工作流如下图：

![](https://i.imgur.com/AUL1X0a.png)

```mermaid
    graph TD
    T1["工作流：发布或更新博客文章"] -.-> A

    A[在Prose.io创建或编辑文件] --> B
    B[提交修改]
    B --> C[触发Github action自动构建并部署博客到Github pages]
```

这样我就可以一键发布博客了。

## 博客配置一览

既然是一个博客，读者的需求当然也是需要仔细考虑的。只是目前访问的人数并不多，因此没有必要太在意体验，只要功能基本够用即可。因此我在博客上主要启用的是能帮助新读者快速发现和阅读感兴趣内容的功能，比如分类和标签。当然也有一些功能，像搜索和评论，本身基本没人使用，则是出于学习目的而进行的尝试。

以下是博客目前的主要功能和对应配置。在持续迭代的过程中，为了找到最符合我使用需求的工具，很多功能我都进行过多种工具的尝试，下文会对这些工具之间的差异展开详细对比。

| 功能组件        | 当前配置                                                     | 过往配置                                                     |
| --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 博客系统        | [Jekyll](https://jekyllrb.com/)                              | [Wordpress.com](https://wordpress.com/), [hexo.io](https://hexo.io/) |
| 部署方式        | [Github actions](https://github.com/features/actions)        | [Github pages](https://pages.github.com/)                    |
| 发布工具        | [prose.io](http://prose.io/)                                 | [Jekyll admin](https://github.com/jekyll/jekyll-admin)       |
| 主题            | [Jekyll minima latest](https://github.com/jekyll/minima) (3.x) | Jekyll minima 2, [TeXt](http://jekyllthemes.org/themes/TeXt/) |
| 评论工具        | [utterances](https://github.com/utterance/utterances)        | [disqus](https://disqus.com/)                                |
| 图床            | [imgur](https://imgur.com/)                                  | 本地图片，[Cloudinary](https://cloudinary.com/)              |
| 站内搜索        | [Google Custom Search](https://programmablesearchengine.google.com/about/) | -                                                            |
| 统计分析        | [Google Analytics](https://analytics.google.com/analytics/web/) | -                                                            |
| 图表            | [Chart.js](https://www.chartjs.org/)                         | TeXt                                                         |
| 图示            | [mermaid.js](https://mermaidjs.github.io/)                   | [jekyll-spaceship](https://github.com/jeffreytse/jekyll-spaceship), TeXt |
| 内嵌YouTube视频 | YouTube内嵌代码                                              | jekyll-spaceship, TeXt                                       |
| 域名            | 阿里云                                                       | github.io                                                    |


## 具体配置对比

#### 博客系统

| 配置选项  | Pros                                         | Cons                         |
| --------- | -------------------------------------------- | ---------------------------- |
| Jekyll    | 简单，可靠，插件生态不错                     | 编译慢，文章多了需要性能调优 |
| hexo      | 构建速度很快，node.js比Rails更适合构建UI组件 | 很多功能需要插件完成         |
| Wordpress | 生态强大，能导出文章为markdown               | 内容编辑不如markdown纯粹                     |

hexo是一款基于node.js的静态网站构建工具，作者是台湾人，因此在华人圈子中有不小名气。曾经冲着它构建速度快的特点试用了一下，实际使用没想象中优秀，最终未采用。

#### 部署方式

| 配置选项       | Pros                       | Cons                                                         |
| -------------- | -------------------------- | ------------------------------------------------------------ |
| Github actions | 灵活，自由，支持各种自动化，不受github pages限制 | 需要编写workflow |
| Github pages   | Github原生支持，自动       | 不支持github pages whitelist以外的Jekyll插件，比如paginate v2 |

#### 发布方式

| 配置选项     | Pros                                                    | Cons                            |
| ------------ | ------------------------------------------------------- | ------------------------------- |
| prose.io     | 在线编辑，无需Git客户端，支持Markdown格式，支持手机访问 | 没有客户端，频繁Authorize验证   |
| Jekyll admin | 离线编辑                                                | 需要Git客户端，不支持手机发文章 |

prose.io是一款针对Github的内容编辑器，支持在线编辑Github repo文件。

#### 主题

| 配置选项      | Pros                                     | Cons                                    |
| ------------- | ---------------------------------------- | --------------------------------------- |
| Minima latest | 简洁，功能够用                           | 不支持Github pages自动构建              |
| Minima 2      | 简洁，Github pages原生支持               | 老旧了，有些功能不支持，比如paginate v2 |
| TeXt          | 好看，功能非常丰富，比如支持Chart.js图表 | 臃肿，文档支持不够完善，工具版本受限    |

TeXt是一款好看又强大的Jekyll主题，而且还是国人出品，Github上有2千多用户。对于喜欢minimalist的我，等哪天觉得minima不够应该会首先尝试它。

#### 评论工具

| 配置选项   | Pros                               | Cons               |
| ---------- | ---------------------------------- | ------------------ |
| utterances | 支持国内访问，数据中立，简洁，好用 | 只支持Github login |
| disqus     | 免费，支持各种Social login         | 干扰信息多         |

utterances是一款轻量级评论插件，利用了Github issues作为评论系统。

#### 图床

| 配置选项 | Pros                                                        | Cons                                      |
| -------- | ----------------------------------------------------------- | ----------------------------------------- |
| imgur    | 免费，无干扰，无限空间，简单，使用mac2imgur app拖拽图片上传 | 不支持国内访问                            |
| 本地图片 | Accessibility，文档和图片数据集中                           | 图片repo空间的scale问题，以及网络访问速度 |

#### 站内搜索

| 配置选项             | Pros       | Cons                                                |
| -------------------- | ---------- | --------------------------------------------------- |
| Google Custom Search | 免费，自动 | 不支持国内访问，索引更新周期长，样式可能会被全局污染 |

Google Custom Search是谷歌提供的站内搜索工具，可以通过[Google Search Conssole](https://search.google.com/search-console)查看站内链接索引情况，搜索结果的优化相当于同时做了Google SEO。

#### 统计分析

| 配置选项   | Pros                          | Cons                |
| ---------- | ----------------------------- | ------------------- |
| Google Analytics | 功能强大，自动，支持统计国内流量            | 管理界面不支持国内访问 |

#### 图表、图示、内嵌YouTube视频

图表、图示和内嵌YouTube视频的情况类似，都是纯前端展示的功能，下面以图示为例进行详细对比。

| 配置选项         | Pros                                                         | Cons                                                         |
| ---------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| mermaid.js       | 无需依赖Rails技术栈，无需修改pipeline，功能不受限，版本不受限 | 不支持本地显示，需要管理JavaScript library                   |
| jekyll-spaceship | 部分编辑器支持本地显示                                       | 依赖Rails技术栈，需要搭建相关pipeline，交互功能受限，版本受限 |

jekyll-spaceship是一款集多种实用功能于一身的Jekyll插件，提供了对表格、数学公式、图示、音频、视频、表情符号等内容的支持。插件功能都挺好，就是build时间会显著加长。

#### 域名

| 配置选项   | Pros                          | Cons                |
| ---------- | ----------------------------- | ------------------- |
| 阿里云域名 | 支持国内访问，便宜            | 需要单独配置SSL证书 |
| github.io  | Github pages自带，自动，https | 不支持国内访问      |

## 自定义代码

### 使用github action部署Jekyll博客的workflow

为了自动化构建并部署静态Jekyll site到Github pages，在参考了网上几种Jekyll部署的workflow之后，我写了一个部署脚本完成这项工作。

`publish_to_blog.yml`:

```yaml
name: Publish to my blog

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
      with:
        persist-credentials: false # otherwise, the token used is the GITHUB_TOKEN, instead of your personal token

    - name: Setup Ruby
      uses: ruby/setup-ruby@v1
    - name: Ruby gem cache
      uses: actions/cache@v1
      with:
        path: vendor/bundle
        key: ${{ runner.os }}-gems-${{ hashFiles('**/Gemfile.lock') }}
        restore-keys: |
          ${{ runner.os }}-gems-
    - name: Install gems
      run: |
        bundle config path vendor/bundle
        bundle install --jobs 4 --retry 3
    
    - name: Build Jekyll site
      run: JEKYLL_ENV=production bundle exec jekyll build

    - name: Commit files
      run: |
        cd ./_site
        git init
        git config --local user.name "Your Name"
        git config --local user.email "Your Email Address"
        git add .
        git commit -m "jekyll build at $(date)"
    - name: Push changes
      uses: ad-m/github-push-action@master
      with:
        directory: ./_site
        repository: goooooouwa/goooooouwa.github.io
        branch: gh-pages
        github_token: ${{ secrets.PERSONAL_ACCESS_TOKEN }}
        force: true
```

### 对Jekyll minima主题的自定义

本着最小代码的原则，仅对Jekyll minima主题做了如下必要修改：

1. 主题内容本地化
2. 解决Google custom search样式问题

Google custom search的样式会被Bootstrap的全局样式覆盖，导致搜索框样式失效，网上搜索之后，采用了样式隔离的方式来保护Google custom search的样式不被影响，一劳永逸。

`google-custom-search-style-fix.scss`:

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

### 自己开发的小工具

为了将我的evernote笔记迁移到Jekyll，我需要：

1. 将evernote导出的html文件转化为markdown格式

2. 添加front matter以导入Jekyll

我在尝试多种工具都不理想后，自己写了一点脚本来帮助完成这项工作，在[evernote2markdown](https://github.com/goooooouwa/evernote2markdown)。

## Todo

下面是一些目前还未很好做到的事情，欢迎留言提供建议。

- [ ] 轻松为markdown文件添加front matter

- [ ] 为markdown文件生成带日期的文件名

- [ ] 为markdown文件添加带连字符的英文名

- [ ] 支持国内访问、从imgur迁移成本低的图床

- [ ] 站内搜索的替代方案，确保国内可用


## 最后

以上就是我的博客目前的setup，想了解更多细节可以直接访问Github代码仓库：[goooooouwa/goooooouwa.github.io](https://github.com/goooooouwa/goooooouwa.github.io)。
