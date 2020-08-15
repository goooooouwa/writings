---
title: "Evernote Analysis: changes to special characters in note title when exporting"
date: "2017-11-16"
---

## Experiment

test note title:

``!@#$%^&*()_+{}[]|;',./:"<>? `~``

exported HTML filename:

``!@#$%^&*()_+{}[]|;',._/"<>_ `~.html``

exported resources folder name:

``!@#$%^&*()_+{}[]|;',._/"<>_ `~.resources``

**Conclusion**

Evernote will change the following characters in note title when exporting to HTML files:

1. `/ -> _`
2. `? -> _`
3. `: -> /`
