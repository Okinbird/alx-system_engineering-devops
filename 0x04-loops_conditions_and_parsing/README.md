## 0x04. Loops, conditions and parsing


**Shellcheck**

[Shellcheck](https://alx-intranet.hbtn.io/rltoken/joK6l_yEZ9N7T0GQ1RDjLA) is a tool that will help you write proper Bash scripts. It will make recommendations on your syntax and semantics and provide advice on edge cases that you might not have thought about. `Shellcheck` is your friend! **All your Bash scripts must pass `Shellcheck` without any error or you will not get any points on the task**.

`Shellcheck` is available on the school’s computers. If you want to use it on your own computer, here is how to [install it](https://alx-intranet.hbtn.io/rltoken/jbz0_-i3TV3WpKgxhyrtpA).



#  0. Create a SSH RSA key pair

Read for this task:

   *  [Linux and Mac OS users](https://alx-intranet.hbtn.io/rltoken/Cy1plV2eR3VphjPqliXB8A)
   *  [Windows users](https://alx-intranet.hbtn.io/rltoken/PXriGT0IKaSXC7L5l0CVag)

man: `ssh-keygen`

You will soon have to manage your own **servers** concept page hosted on remote [data centers](https://alx-intranet.hbtn.io/rltoken/nDPzEm5SYxcdGxP_OpVYXQ). We need to set them up with your RSA public key so that you can access them via SSH.

Create a RSA key pair.

Requirements:

*  Share your **public key** in your answer file `0-RSA_public_key.pub`
*  Fill the `SSH public key` field of your `intranet profile` with the public key you just generated
*  **Keep the private key to yourself in a secure location**, you will use it later to connect to your servers using SSH. Some storing ideas are Dropbox, Google Drive, password manager, USB key. Failing to do so will prevent you to access your servers, which will prevent you from doing your projects
*  If you decide to add a passphrase to your key, make sure to save this passphrase in a secure location, you will not be able to use your keys without the passphrase

SSH and RSA keys will be covered in depth in a later project.



#  1. For Best School loop

Write a Bash script that displays `Best School` 10 times.

Requirement:

*  You must use the `for` loop (`while` and `until` are forbidden)

```
sylvain@ubuntu$ head -n 2 1-for_best_school
#!/usr/bin/env bash
# This script is displaying "Best School" 10 times
sylvain@ubuntu$ ./1-for_best_school
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
sylvain@ubuntu$
```

Note that:

*  The first line of my Bash script starts with `#!/usr/bin/env bash`
*  The second line of my Bash scripts is a comment explaining what it is doing



#  2. While Best School loop

Write a Bash script that displays `Best School` 10 times.

Requirements:

*  You must use the `while` loop (`for` and `until` are forbidden)



#  3. Until Best School loop

Write a Bash script that displays `Best School` 10 times.

Requirements:

*  You must use the `until` loop (`for` and `while` are forbidden)



#  4. If 9, say Hi!

Write a Bash script that displays `Best School` 10 times, but for the 9th iteration, displays `Best School` *and then* `Hi` on a new line.

Requirements:

*  You must use the `while` loop (`for` and `until` are forbidden)
*  You must use the `if` statement


