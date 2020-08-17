---
date: 2014-04-04
category: linux
---
# Bindkey Examples - Screen User's Manual



**14.6 Bindkey Examples**

Here are some examples of keyboard bindings:

`bindkey -d`

Show all of the default key bindings. The application mode entries are marked with [A].

`bindkey -k k1 select 1`

Make the "F1" key switch to window one.

`bindkey -t foo stuff barfoo`

Make ‘foo’ an abbreviation of the word ‘barfoo’. Timeout is disabled so that users can type slowly.

`bindkey "\024" mapdefault`

This key-binding makes ‘C-t’ an escape character for key-bindings. If you did the above ‘stuff barfoo’ binding, you can enter the word ‘foo’ by typing ‘C-t foo’. If you want to insert a ‘C-t’ you have to press the key twice (i.e., escape the escape binding).

`bindkey -k F1 command`

Make the F11 (not F1!) key an alternative screen escape (besides ‘C-a’).
