---
published: true
title: 电子书阅读器跨平台解决方案探索
category: computer
tags: ebook epub mobi e-reader
---

## Best free iOS ePub reader with continuious speak content

各种免费 iOS ePub 阅读器对 accessibility 的支持参差不齐，很少支持 Siri speak content, 即使支持也无法锁屏连续读屏，最好只有 Yomu EBook Reader 支持锁屏连续读屏，但是每次都得从章节开始读起，不能从中间开始读。

据说 Voice Dream Reader 不错，不过收费，没试过。

Apple Books 支持锁屏连续读屏，但是两页内容之间会停顿数秒种，体验打折。

iOS 上最好的锁屏连续读屏目前只找到一个: Kindle app。不过它只支持 Mobi 格式，而且是没有 DRM 的书才能锁屏连续读屏。

## Best free Chrome ePub reader extension

[EPUBReader](https://chrome.google.com/webstore/detail/epubreader/jhhclmfgfllimlhabjkgkeebkbiadflb?hl=en)

### Pros

- performance
- works offline
- customizability

## Cons

- can not change font?

### Alternative solutions tried:

- Loudreader (supports Mobi, but no two-column view)
- Mobi Reader (supports Mobi, but no two-column view & slow)
- ePub Viewer (support customizations, but no two-column view)

## Best Free Android ePub reader

[ReadEra](https://play.google.com/store/apps/details?id=org.readera&hl=en_US&gl=US)

### Pros

- support both ePub and Mobi
- free
- good UI & experience

### Cons

- doesn't support cloud storage

## Conclusion

ePub format is better than Mobi, it has more consistent looks, better compatibility, better ecosystem.

## Latest setup

目前的解决方案是：keep both ePub & Mobi versions.

| Scenario                          | Usage         | Device          | Solution                    | File format | Sync solution                   |
| --------------------------------- | ------------- | --------------- | --------------------------- | ----------- | ------------------------------- |
| Listening ebooks on phone         | Daily         | iPhone          | Kindle app                  | Mobi        | whispersync + iTunes 大文件传输 |
| Reading ebooks on phone           | Less frequent | iPhone          | Kindle app                  | Mobi        | whispersync + iTunes 大文件传输 |
| Reading Manga on e-reader         | Daily         | Kindle oasis    | Kindle device               | Mobi        | 漫画下载服务器                  |
| Reading ebooks on e-reader        | Less frequent | Kindle oasis    | Kindle device               | Mobi        | whispersync                     |
| Reading ebooks on tablet & laptop | Less frequent | iPad & Mac      | Apple Books                 | ePub        | iCloud library                  |
| Reading ebooks on desktop         | Rarely        | Windows & Linux | EPUBReader Chrome extension | ePub        | OneDrive                        |
