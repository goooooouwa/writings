# How to rename with prefix/suffix

In Bash and zsh you can do this with [Brace Expansion](http://www.gnu.org/software/bash/manual/bashref.html#Brace-Expansion). This simply expands a list of items in braces. For example:
```bash
# echo {vanilla,chocolate,strawberry}-ice-cream
vanilla-ice-cream chocolate-ice-cream strawberry-ice-cream
```
So you can do your rename as follows:

`mv {,new.}original.filename`

as this expands to:

`mv original.filename new.original.filename`