# Generate ctags for all bundled gems in a ruby project

You can make bundler show the locations for the gems in the gemfile with

`bundle show --paths`

If you pipe this list into ctags, it will generate tags for all gems specified in the gemfile.

`bundle show --paths | xargs ctags -R`

To index the tags and append the tags for your project run

`ctags -R -a *`