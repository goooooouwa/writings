# Update ctags with brew

The "ctags" coming with Mac OS is really a very old one (1993). We can update it with brew, and I think this [Article](http://gmarik.info/blog/2010/10/08/ctags-on-OSX) is very useful.

The point is:

* Install latest ctags with brew: brew install ctags. This should be OK
* Replace "ctags" with:
1. alias ctags="`brew --prefix`/bin/ctags"
2. alias ctags >> ~/.bash_profile
3. Please note that the original post uses ~/.bashrc but it won't work in Mac OS. So use ~/.bash_profile instead

`brew --prefix` will display the install path of brew, and append it with /bin/ctags will get the new ctags pathname. Please note that "`" is the character with the key "~" on your keyboard.

