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



#  4. To infinity and beyond

Write a Bash script that displays `To infinity and beyond` indefinitely.

Requirements:

*  In between each iteration of the loop, add a `sleep 2`



#  5. Don't stop me now!

We stopped our `4-to_infinity_and_beyond` process using `ctrl+c` in the previous task, there is actually another way to do this.

Write a Bash script that stops `4-to_infinity_and_beyond` process.

Requirements:

*  You must use `kill`

Terminal #0
```
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
sylvain@ubuntu$
```
Terminal #1
```
sylvain@ubuntu$ ./5-dont_stop_me_now
sylvain@ubuntu$
```
I opened 2 terminals in this example, started by running my `4-to_infinity_and_beyond` Bash script in terminal #0 and then moved on terminal #1 to run `5-dont_stop_me_now`. We can then see in terminal #0 that my process has been terminated.



#  6. Stop me if you can

Write a Bash script that stops `4-to_infinity_and_beyond` process.

Requirements:

*  You cannot use `kill` or `killall`

Terminal #0
```
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
sylvain@ubuntu$
```

Terminal #1
```
sylvain@ubuntu$ ./6-stop_me_if_you_can
sylvain@ubuntu$
```

I opened 2 terminals in this example, started by running my `4-to_infinity_and_beyond` Bash script in terminal #0 and then moved on terminal #1 to run `6-stop_me_if_you_can`. We can then see in terminal #0 that my process has been terminated.



#  7. Highlander

Write a Bash script that displays:

*  `To infinity and beyond` indefinitely
*  With a `sleep 2` in between each iteration
*  `I am invincible!!!` when receiving a `SIGTERM` signal

Make a copy of your `6-stop_me_if_you_can` script, name it `67-stop_me_if_you_can`, that kills the `7-highlander` process instead of the `4-to_infinity_and_beyond` one.

Terminal #0
```
sylvain@ubuntu$ ./7-highlander
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
I am invincible!!!
To infinity and beyond
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
^C
sylvain@ubuntu$
```

Terminal #1
```
sylvain@ubuntu$ ./67-stop_me_if_you_can
sylvain@ubuntu$ ./67-stop_me_if_you_can
sylvain@ubuntu$ ./67-stop_me_if_you_can
sylvain@ubuntu$
```

I started 7-highlander in Terminal #0 and then run `67-stop_me_if_you_can` in terminal #1, for every iteration we can see `I am invincible!!!` appearing in terminal #0.



#  8. Beheaded process

Write a Bash script that kills the process `7-highlander`.

Terminal #0
```
sylvain@ubuntu$ ./7-highlander
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Killed
sylvain@ubuntu$
```

Terminal #1
```
sylvain@ubuntu$ ./8-beheaded_process
sylvain@ubuntu$
```

I started `7-highlander` in Terminal #0 and then run `8-beheaded_process` in terminal #1 and we can see that the `7-highlander` has been killed.


