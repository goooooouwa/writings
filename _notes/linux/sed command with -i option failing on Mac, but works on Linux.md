---
---
# sed command with -i option failing on Mac, but works on Linux



If you use the -i option you need to provide an extension for your backups.

If you have:
```
File1.txt
File2.cfg
```
The command:

`sed -i '.original' 's/old_link/new_link/g' *`

create 2 backup files like:
```
File1.txt.original
File2.cfg.original
```
You can use

`sed -i '' 's/old_link/new_link/g' *`

to ignore backups.