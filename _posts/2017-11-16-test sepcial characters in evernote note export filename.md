---
layout: post
title: test sepcial characters in evernote note export filename
category: coding
tags: evernote
---

test filename: ``!@#$%^&*()_+{}[]\|;',./:"<>? `~``

## Analysis

title:

``!@#$%^&*()_+{}[]\|;',./:"<>? `~``

exported HTML filename:

``!@#$%^&*()_+{}[]\|;',._/"<>_ `~.html``

exported resources folder name:

``!@#$%^&*()_+{}[]\|;',._/"<>_ `~.resources``

Changes:

- `/` -> `_`
- `?` -> `_`
- `:` -> `/`
