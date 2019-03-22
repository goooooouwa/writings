---
title: webpack url-loader
layout: post
category: coding
tags: webpack
---

The url loader works like the file loader, but can return a Data Url if the file is smaller than a byte limit.

`{ test: /\.png$/, loader: "url-loader?limit=100000" },`

a) If smaller than the limit, the image is encoded as a Data Url and embedded inline in the bundle.js (no seperate file is emitted).

encoded as Data Url.

![Imgur](https://i.imgur.com/YndJVHa.png)

inline in the bundle.js

![Imgur](https://i.imgur.com/auXH3tr.png)

b) if larger than the limit, a new file, whose filename is the MD5 hash of the file's contents with the original extension, is emitted (same content as the source image) in the output directory and returns the public url.

a new file is emitted in the output directory

![Imgur](https://i.imgur.com/ns6zGfi.png)

the public url is returned in bundle.js

![Imgur](https://i.imgur.com/xYvUEAM.png)

the file is a seperate download, rather than inline in bundle.js.

![Imgur](https://i.imgur.com/kboAnUb.png)