# Command line disk usage utilities df and du

Getting disk usage information on a Mac is often gathered by selecting a file, directory, or hard drive and hitting Command-I for Get Info, then appears a nice GUI interface with extended information about the selected object including disk usage. Command-I isn’t the only way to get disk info however, with the command line there are two useful utilities to gather this data that you should know; df and du. The following is a brief explanation of each command and how you can use them:
**df – displays disk usage information based on file system (ie: entire drives, attached media, etc)**

At the command prompt, type:

`df -h`

The -h flag is for ‘human readable form’ meaning return results in the familiar megabyte/gigabyte format. You should see something like this:
```
$ df -h

Filesystem            Size  Used Avail Use% Mounted on

/dev/disk0s2           74G   52G   22G  70% /
```
In this case, /dev/disk0s2 is the main hard disk, and 70% of it is in use.
**du – displays disk usage information for each file and directory (ie: home directories, folders, etc)**

At the command prompt type:

`du -sh ~`

The -s flag is for a summary, and once again the -h flag is for ‘human readable form’, the ~ is your home directory. You should see something like this:
```
$ du -sh ~

26G     /Users/MacUser
```
This users home directory takes up 26gb of space!
Another example, type 
`du -sh *`
at the terminal.  The * wildcard will cover all files in your home directory or whatever directory you are currently in, by default the Terminal will launch with your home directory as the pwd (present working directory).
```
$ du -sh *

32M     Desktop

217M    Documents

531M    Downloads

12G     Library

5.2G    Movies

2.1G    Music

1.5G    Pictures

8.0k    Public

36k     Sites
```
As you can see, the * allows for a breakdown of the space taken up by which directory. This can be extremely useful when trying to clear up disk space if you don’t know what is hogging all the room.
