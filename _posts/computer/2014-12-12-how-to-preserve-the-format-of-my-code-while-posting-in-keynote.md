---
title: 小窍门： 如何在Keynote中插入代码且不丢失样式？
layout: post
category: computer
---

步骤:

1. 安装[MacVim](https://code.google.com/p/macvim/)并用它打开你的源代码
2. 选择菜单栏中Syntax下的Convert to HTML
3. 选中新创建的包含HTML的buffer，然后选择Files » Save
4. 在Safari中打开这个HTML文件( 它与你的源代码在同一个目录下)。你会看见一份完美复制了源代码在MacVim中样式的网页。
5. 接下来只需选中Safari中显示的代码并拖拽到Keynote的页面中即可。下面附上一份源代码转换后的HTML样例，你可以将它保存文件后用浏览器打开，便可知道它看起来如何。

常见问题:

1. 我只有Vim, 可以将代码转成HTML?
  - 可以。只需在Vim的普通模式下输入 :TOhtml 并按下回车即可。
3. 我能在微软的PPT上使用此方法吗？
  - 很可惜，不行。我分别试过在PC和Mac下拖拽转换后的HTML到PPT上，结果仅有少量样式得到保留。不过，你还可以尝试[这篇文章](http://hints.macworld.com/article.php?story=20091104002118164)所提到的其他方法。

来源：[Embed formatted, syntax-highlighted source code in Keynote](http://hints.macworld.com/article.php?story=20091104002118164)

------

For English readers

Tip： How to preserve the format of my code while posting in Keynote?

Steps:

1. Install [MacVim](https://code.google.com/p/macvim/) and open your source code file
2. Select Convert to HTML in the Syntax menu
3. select the new buffer populated with HTML code, select Files » Save
4. Open this HTML file in Safari( it's in the same directory as the source code file). It should appear as a perfect duplicate of the original editing buffer in MacVim, with all formatting (font, indentation, syntax highlighting) options intact
5. Simply select the code as displayed in Safari and drag it across to a Keynote slide to create a new Text Box. Attached below is an example HTML converted from source code, you can save it then open up with your browser to see how it looks like.

FAQ:

1. I only have Vim, can I convert my code to HTML?
  - Yes, you can. Simply type :TOhtml then hit Enter in normal mode.
3. Can I use this with MS PPT?
  - Sadly no. I've tried to drag the HTML into MS PPT on both Mac and PC, the format is only partially preserved. But you can still try out other methods mentioned in [this article](http://hints.macworld.com/article.php?story=20091104002118164).

Source: [Embed formatted, syntax-highlighted source code in Keynote](http://hints.macworld.com/article.php?story=20091104002118164)

Download the example [here]({{ "/assets/downloads/2014-12-12-how-to-preserve-the-format-of-my-code-while-posting-in-keynote/example_HTML_converted_from_source_code.html" | relative_url }}){: download="example-html" }.