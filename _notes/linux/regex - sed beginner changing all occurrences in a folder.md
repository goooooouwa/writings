---
category: linux
---
# regex - sed beginner: changing all occurrences in a folder

There is no way to do it using only sed. You'll need to use at least the find utility together:
```
find . -type f -exec sed -i.bak "s/foo/bar/g" {} \;
```
This command will create a `.bak` file for each changed file.
Notes:

* The `-i` argument for `sed` command is a GNU extension, so, if you are running this command with the BSD's `sed` you will need to redirect the output to a new file then rename it.
* The `find` utility does not implement the `-exec` argument in old UNIX boxes, so, you will need to use a `| xargs` instead.
