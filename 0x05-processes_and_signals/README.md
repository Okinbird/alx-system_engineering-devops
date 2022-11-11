##  0x05. Processes and signals



#  0. What is my PID

Write a Bash script that displays its own PID.



#  1. List your processes

Write a Bash script that displays a list of currently running processes.

Requirements:

*  Must show all processes, for all users, including those which might not have a TTY
*  Display in a user-oriented format
*  Show process hierarchy



#  2. Show your Bash PID

Using your previous exercise command, write a Bash script that displays lines containing the `bash` word, thus allowing you to easily get the PID of your Bash process.

Requirements:

*  You cannot use `pgrep`
*  The third line of your script must be `# shellcheck disable=SC2009` (for more info about ignoring `shellcheck` error [here](https://alx-intranet.hbtn.io/rltoken/vErRT8QGU2bwJ6FLvPLzxw))




#  3. Show your Bash PID made easy

Write a Bash script that displays the PID, along with the process name, of processes whose name contain the word `bash`.

Requirements:

*  You cannot use `ps`
```
sylvain@ubuntu$ ./3-show_your_bash_pid_made_easy
4404 bash
4555 bash
sylvain@ubuntu$ ./3-show_your_bash_pid_made_easy
4404 bash
4557 bash
sylvain@ubuntu$
```
Here we can see that:

*  For the first iteration: `bash` PID is `4404` and that the `3-show_your_bash_pid_made_easy` script PID is `4555`
*  For the second iteration: `bash` PID is `4404` and that the `3-show_your_bash_pid_made_easy` script PID is `4557`


