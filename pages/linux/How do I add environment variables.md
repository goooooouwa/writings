# How do I add environment variables

to access the environment variable, use `$` dollar sign as prefix, e.g. `$MYVAR`

To set variable **only** for current shell:
`VARNAME="my value"`
To set it for current shell and **all processes** started from current shell:
`export VARNAME="my value"      # shorter, less portable version`
To set it **permanently** for all future bash sessions add such line to your `.bashrc` file in your $HOME directory.
To set it permanently, and **system wide** (all users, all processes) add set variable in  /etc/environment:
`gksudo gedit /etc/environment`
You need to logout from current user and login again so environment variables changes take place.