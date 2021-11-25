---
published: true
title: 电子书阅读器跨平台解决方案探索
category: computer
tags: ebook ePub Mobi eReader
---
## Best free iOS ePub reader with continuious speak content

各种免费iOS ePub阅读器对accessibility 的支持参差不齐，很少支持Siri speak content, 即使支持也无法锁屏连续读屏，最好只有Yomu EBook Reader支持锁屏连续读屏，但是每次都得从章节开始读起，不能从中间开始读。

据说Voice Dream Reader不错，不过收费，没试过。

Apple Books支持锁屏连续读屏，但是两页内容之间会停顿数秒种，体验打折。

iOS上最好的锁屏连续读屏目前只找到一个: Kindle app。不过它只支持Mobi格式，而且是没有DRM的书才能锁屏连续读屏。

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

| Scenario                                            | Solution                    | File format   | Sync solution                  |
| --------------------------------------------------- | --------------------------- | ------------- | ------------------------------ |
| Listening and reading ebooks on iPhone              | Kindle app                  | DRM-free Mobi | whispersync + iTunes大文件传输 |
| Reading ebooks & Manga on Kindle devices            | Kindle oasis                | DRM-free Mobi | whispersync + 漫画下载服务器   |
| Reading ebooks on Apple devices (iPhone, iPad, Mac) | Apple Books                 | ePub          | iCloud library                 |
| Reading ebooks on PC (Windows & Linux)              | EPUBReader Chrome extension | ePub          | OneDrive                       |