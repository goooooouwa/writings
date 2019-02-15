---
layout: post
title: 'webpack url-loader'
category: coding
tags: webpack
published: false
---

The url loader works like the file loader, but can return a Data Url if the file is smaller than a byte limit.

`{ test: /\.png$/, loader: "url-loader?limit=100000" },`

a) If smaller than the limit, the image is encoded as a Data Url and embedded inline in the bundle.js (no seperate file is emitted).

encoded as Data Url.

/if_smaller_than_the_limit.png

inline in the bundle.js

/Screen Shot 2017-01-06 at 2.35.54 PM.png

b) if larger than the limit, a new file, whose filename is the MD5 hash of the file's contents with the original extension, is emitted (same content as the source image) in the output directory and returns the public url.

a new file is emitted in the output directory

/685895E3-0CB7-4FEB-B903-9E368D7218A2.png

the public url is returned in bundle.js

/F3D3C24B-BD96-48A8-A5C8-640A214CE265.png

the file is a seperate download, rather than inline in bundle.js.

/if larger than the limit.png