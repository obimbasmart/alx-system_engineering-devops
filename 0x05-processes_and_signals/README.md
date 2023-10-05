# Processes and signals
> A lot has been learned. This project  had the opportunity to dive deep into the world of process management on Linux, and it's fun  experimenting with various commands, mastering the art of process manipulation, and signal handling, and exploring the intricate details of process control.

> Moreover, I've expanded my knowledge base by delving into complex topics such as `daemons`, `init.d` files, and yes, even creating a real `zombie` process as part of one of the advanced tasks. This hands-on experience has not only been incredibly educational but has also reinforced my enthusiasm for Linux and its endless possibilities. I love `LINUX`

## Mandatory

`0-what-is-my-pid` - Write a Bash script that displays its own PID.

<details>
  <summary>
    <code>1-list_your_processes</code> - Write a Bash script that displays a list of currently running processes
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>Must show all processes, for all users, including those which might not have a TTY</li>
    <li>Display in a user-oriented format</li>
    <li>Show process hierarchy</li>
  </ul>
</details>

<details>
  <summary>
    <code>2-show_your_bash_pid</code> - Write a Bash script that displays lines containing the word <code>bash</code> to find your Bash PID
  </summary>
  <ul>
    <li>You cannot use pgrep</li>
    <li>The third line of your script must be <code># shellcheck disable=SC2009</code> (for more info about ignoring shellcheck error here)</li>
  </ul>
</details>

<details>
  <summary>
    <code>3-show_your_bash_pid_made_easy</code> - Write a Bash script that displays the PID, along with the process name, of processes whose name contains the word <code>bash</code>
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>You cannot use <code>ps</code></li>
  </ul>
</details>

<details>
  <summary>
    <code>4-to_infinity_and_beyond</code> - Write a Bash script that displays "To infinity and beyond" indefinitely with a sleep of 2 seconds between each iteration.
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>In between each iteration of the loop, add a <code>sleep 2</code></li>
  </ul>
</details>


<details>
  <summary>
    <code>5-dont_stop_me_now</code> - Write a Bash script that stops the <code>4-to_infinity_and_beyond</code> process using <code>kill</code>
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>You must use <code>kill</code></li>
  </ul>
</details>

<details>
  <summary>
    <code>6-stop_me_if_you_can</code> - Write a Bash script that stops the <code>4-to_infinity_and_beyond</code> process without using <code>kill</code> or <code>killall</code>
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>You cannot use <code>kill</code> or <code>killall</code></li>
  </ul>
</details>


<details>
  <summary>
    <code>7-highlander</code> - Bash script that displays "To infinity and beyond indefinitely" with a sleep of 2 seconds between each iteration and responds to a SIGTERM signal with "I am invincible!!!"
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>Display "To infinity and beyond indefinitely" with a sleep of 2 seconds between each iteration</li>
    <li>Respond with "I am invincible!!!" when receiving a SIGTERM signal</li>
  </ul>
</details>

<details>
  <summary>
    <code>8-beheaded_process</code> - Bash script that kills the process <code>7-highlander</code>
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>Kill the <code>7-highlander</code> process</li>
  </ul>
</details>


## Advanced tasks
<details>
  <summary>
    <code>100-process_and_pid_file</code> - Bash script that performs the following actions:
  </summary>
  <ul>
    <li>Creates the file <code>/var/run/myscript.pid</code> containing its PID</li>
    <li>Displays "To infinity and beyond indefinitely"</li>
    <li>Displays "I hate the kill command" when receiving a SIGTERM signal</li>
    <li>Displays "Y U no love me?!" when receiving a SIGINT signal</li>
    <li>Deletes the file <code>/var/run/myscript.pid</code> and terminates itself when receiving a SIGQUIT or SIGTERM signal</li>
  </ul>
</details>


<details>
  <summary>
    <code>manage_my_process</code> - Bash script that:
  </summary>
  <ul>
    <li>Indefinitely writes "I am alive!" to the file <code>/tmp/my_process</code></li>
    <li>In between every "I am alive!" message, the program pauses for 2 seconds</li>
  </ul>
  <p>Requirements:</p>
  <ul>
    <li>When passing the argument <code>start</code>:</li>
    <ul>
      <li>Starts <code>manage_my_process</code></li>
      <li>Creates a file containing its PID in <code>/var/run/my_process.pid</code></li>
      <li>Displays <code>manage_my_process started</code></li>
    </ul>
    <li>When passing the argument <code>stop</code>:</li>
    <ul>
      <li>Stops <code>manage_my_process</code></li>
      <li>Deletes the file <code>/var/run/my_process.pid</code></li>
      <li>Displays <code>manage_my_process stopped</code></li>
    </ul>
    <li>When passing the argument <code>restart</code>:</li>
    <ul>
      <li>Stops <code>manage_my_process</code></li>
      <li>Deletes the file <code>/var/run/my_process.pid</code></li>
      <li>Starts <code>manage_my_process</code></li>
      <li>Creates a file containing its PID in <code>/var/run/my_process.pid</code></li>
      <li>Displays <code>manage_my_process restarted</code></li>
    </ul>
    <li>Displays <code>Usage: manage_my_process {start|stop|restart}</code> if any other argument or no argument is passed</li>
  </ul>
</details>

<details>
  <summary>
    <code>102-zombie.c</code> - C program that creates 5 zombie processes.
  </summary>
  <p>Requirements:</p>
  <ul>
    <li>For every zombie process created, it displays "Zombie process created, PID: ZOMBIE_PID"</li>
    <li>Your code should use the Betty style.</li>
  </ul>
</details>



