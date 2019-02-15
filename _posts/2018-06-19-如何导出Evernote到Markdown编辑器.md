---
layout: post
title: '如何导出Evernote到Markdown编辑器'
category: coding
tags: evernote
---


Steps
1. 导出成html和assets(image) 
2. Deprecate Evernote创作栈（for safety migration） 
3. convert to Jekyll format while preserve file name as blog name so that assets folder stay consistent and easy renaming (script) 
4. Clean up notes and re-import, or clean up in Jekyll directly? Latter 
5. Convert HTML files to Markdown files (script. gave up, too many CSS styles to clean up) 
6. Abstract meta into Front matter: title, tags (script) 
7. Update asset links in Markdown files (Find&Replace with Regex) 
8. Manual update converted posts(remove unnecessary styles and HTML code) on a Update On Demand basis 

