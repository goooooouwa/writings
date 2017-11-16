<div>The url loader works like the file loader, but can return a Data Url if the file is smaller than a byte limit.  
</div>

<div>

<pre style="box-sizing: border-box; font-family: Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 13.6px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; word-wrap: normal; padding: 16px; overflow: auto; background-color: rgb(247, 247, 247); border-radius: 3px; word-break: normal; color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">{ test<span style="box-sizing: border-box; color: rgb(167, 29, 93);">:</span> <span style="box-sizing: border-box; color: rgb(24, 54, 145);"><span style="box-sizing: border-box; color: rgb(24, 54, 145);">/</span><span style="box-sizing: border-box; color: rgb(99, 163, 92); font-weight: bold;">\.</span>png<span style="box-sizing: border-box; color: rgb(167, 29, 93);">$</span><span style="box-sizing: border-box; color: rgb(24, 54, 145);">/</span></span>, loader<span style="box-sizing: border-box; color: rgb(167, 29, 93);">:</span> <span style="box-sizing: border-box; color: rgb(24, 54, 145);"><span style="box-sizing: border-box; color: rgb(24, 54, 145);">"</span>url-loader?limit=100000<span style="box-sizing: border-box; color: rgb(24, 54, 145);">"</span></span> },</pre>

</div>

<div>

<div>a) If smaller than the limit, the image is encoded as a Data Url and embedded inline in the bundle.js (no seperate file is emitted).  
</div>

<div>encoded as Data Url.</div>

<div>![](webpack%20url-loader.resources/if_smaller_than_the_limit.png)  
</div>

<div>inline in the bundle.js</div>

<div>![](webpack%20url-loader.resources/Screen%20Shot%202017-01-06%20at%202.35.54%20PM.png)  
</div>

<div>b) if larger than the limit, a new file, whose filename is the MD5 hash of the file's contents with the original extension, is emitted (same content as the source image) in the output directory and returns the public url.</div>

<div>a new file is emitted in the output directory  
</div>

<div>![](webpack%20url-loader.resources/685895E3-0CB7-4FEB-B903-9E368D7218A2.png)  
</div>

<div>the public url is returned in bundle.js  
</div>

<div>![](webpack%20url-loader.resources/F3D3C24B-BD96-48A8-A5C8-640A214CE265.png)  
</div>

<div>the file is a seperate download, rather than inline in bundle.js.</div>

<div>![](webpack%20url-loader.resources/if%20larger%20than%20the%20limit.png)  
</div>

</div>
