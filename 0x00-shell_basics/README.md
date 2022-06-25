
# 0. Where am I?
Write a script that prints the absolute path name of the current working directory.
Example:
```
$ ./0-current_working_directory
/root/alx-system_engineering-devops/0x00-shell_basics
$
```
# 1. What’s in there?
Display the contents list of your current directory.
Example:
```
$ ./1-listit
Applications    Documents   Dropbox Movies Pictures
Desktop Downloads   Library Music Public
$
```
# 2. There is no place like home
Write a script that changes the working directory to the user’s home directory.
 * You are not allowed to use any shell variables

# 3. The long format
Display current directory contents in a long format
 Example:
```
 $ ./3-listfiles
 total 32
 -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
 -rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
 -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
 -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
 $
```
# 4. Hidden files
Display current directory contents, including hidden files (starting with .). Use the long format.
Example:
```
$ ./4-listmorefiles
total 32
drwxr-xr-x@ 6 sylvain staff 204 Jan 25 00:29 .
drwxr-xr-x@ 43 sylvain staff 1462 Jan 25 00:19 ..
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:41 4-listmorefiles
$
```
# 5. I love numbers
Display current directory contents.
 * Long format
 * with user and group IDs displayed numerically
 * And hidden files (starting with .)
Example:
```
$ ./5-listfilesdigitonly
total 32
drwxr-xr-x@ 6 501 20 204 Jan 25 00:29 .
drwxr-xr-x@ 43 501 20 1462 Jan 25 00:19 ..
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:23 1-listfiles
-rwxr-xr-x@ 1 501 20 19 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 501 20 20 Jan 25 00:39 3-listfiles
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:41 4-listmorefiles
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:43 5-listfilesdigitonly
$
```
# 6. Welcome
Create a script that creates a directory named my_first_directory in the /tmp/ directory.
Example:
```
$ ./6-firstdirectory
$ file /tmp/my_first_directory/
/tmp/my_first_directory/: directory
$
```
# 7. Betty in my first directory
Move the file betty from /tmp/ to /tmp/my_first_directory.
Example:
```
$ ./7-movethatfile
$ ls /tmp/my_first_directory/
betty
$
`
``