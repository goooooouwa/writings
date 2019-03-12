Encountered a Siri Shortcuts app bug

2019-02-14-Found a Siri Shortcuts app bug

一些action的配置在切换语言后失效了。

中文名称正常 https://i.imgur.com/x0sKuhv.png

中文获取URL失效 https://i.imgur.com/Av5g1aH.png

中文页面选择失效 https://i.imgur.com/pPfDmbP.jpg

英文名称正常 https://i.imgur.com/XY9yruo.png

英文类型返回值 https://i.imgur.com/FcqKB6l.png

英文获取URL正常 https://i.imgur.com/RKGGvLE.png

英文页面选择正常 https://i.imgur.com/DGaQC1w.png

Besides, GetType类型返回值是国际化的，在英语界面下“文本”的类型值是Text，而在中文界面中，“文本”的类型值是“文本”，这给类型匹配带来麻烦。如果你要判断数据类型，可能需要考虑多种语言的结果。