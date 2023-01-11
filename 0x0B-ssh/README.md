##   0x0B. SSH



#   0. Use a private key

Write a Bash script that uses `ssh` to connect to your server using the private key `~/.ssh/school` with the user `ubuntu`.

Requirements:

*   Only use `ssh` single-character flags
*   You cannot use `-l`
*   You do not need to handle the case of a private key protected by a passphrase

```
sylvain@ubuntu$ ./0-use_a_private_key
ubuntu@server01:~$ exit
Connection to 8.8.8.8 closed.
sylvain@ubuntu$ 
```
