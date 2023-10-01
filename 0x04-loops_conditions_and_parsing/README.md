# Loops, conditions, and parsing

> `Bash` programming is truly fascinating! I've acquired valuable skills in automating tasks on Linux through bash scripting. This project introduced fundamental concepts like `looping`, `conditional statements` and `parsing` within the bash environment. It was immensely enjoyable to create simple bash scripts that automate tasks and engage in fun activities. I firmly believe these skills will be indispensable in my journey Full Stack engineer. Among the tasks, I found the most satisfaction in parsing Apache log files and crafting precise outputs using the powerful `awk `command. My passion for Linux has only grown stronger through this experience

## Mandatory
<details>
  <summary>
    <code>0-RSA_public_key.pub</code> - Create an RSA key pair
  </summary>
  <p>This task involves generating an RSA key pair and performing the following actions:</p>
  <ul>
    <li>Share your public key by storing it in the file <code>0-RSA_public_key.pub</code></li>
    <li>Fill the SSH public key field of your intranet profile with the public key you just generated</li>
    <li>Keep the private key secure in a location only accessible by you. You'll need it later to connect to your servers using SSH. You can use storage options such as Dropbox, Google Drive, a password manager, or a USB key. Failing to do so may result in the inability to access your servers, which can hinder your project work.</li>
    <li>If you decide to add a passphrase to your key, ensure that you save this passphrase securely. You won't be able to use your keys without the passphrase.</li>
  </ul>
</details>

<details>
  <summary>
    <code>1-for_best_school</code> - Create a Bash script that displays <code>"Best School"</code> 10 times.
  </summary>
  <p>You must use the for loop (while and until are forbidden).</p>
</details>

<details>
  <summary>
    <code>2-while_best_school</code> - Create a Bash script that displays <code>"Best School"</code> 10 times.
  </summary>
  <p>You must use the while loop (for and until are forbidden).</p>
</details>

<details>
  <summary>
    <code>3-until_best_school</code> - Create a Bash script that displays <code>"Best School"</code> 10 times.
  </summary>
  <p>You must use the until loop (for and while are forbidden).</p>
</details>

<details>
  <summary>
    <code>4-if_9_say_hi</code> - Write a Bash script that displays <code>Best School</code> <code>10</code> times, but for the <code>9</code>th iteration, displays <code>Best School</code> and then <code>Hi</code> on a new line.
  </summary>
  <ul>
    <li>You must use the while loop (for and until are forbidden).</li>
    <li>You must use the if statement.</li>
  </ul>
</details>

<details>
  <summary>
    <code>5-4_bad_luck_8_is_your_chance</code> - Write a Bash script that loops from 1 to 10 and displays <code>bad luck</code> for the <code>4</code>th loop iteration, <code>good luck</code> for the <code>8</code>th loop iteration, and <code>Best School</code> for the other iterations.
  </summary>
  <ul>
    <li>You must use the while loop (for and until are forbidden).</li>
    <li>You must use the if, elif, and else statements.</li>
  </ul>
</details>

<details>
  <summary>
    <code>6-superstitious_numbers</code> - Write a Bash script that displays numbers from 1 to 20 and displays <code>4</code> and then <code>bad luck from China</code> for the <code>4</code>th loop iteration, <code>9</code> and then <code>bad luck from Japan</code> for the <code>9</code>th loop iteration, and <code>17</code> and then <code>bad luck from Italy</code> for the <code>17</code>th loop iteration.
  </summary>
  <ul>
    <li>You must use the while loop (for and until are forbidden).</li>
    <li>You must use the case statement.</li>
  </ul>
</details>

<details>
  <summary>
    <code>7-clock</code> - Write a Bash script that displays the time for <code>12</code> hours and <code>59</code> minutes, including hours from <code>0</code> to <code>12</code> and minutes from <code>1</code> to <code>59</code>.
  </summary>
  <ul>
    <li>You must use the while loop (for and until are forbidden).</li>
    <li>Note that in this example, we only display the first 70 lines using the head command.</li>
  </ul>
</details>


<details>
  <summary>
    <code>8-for_ls</code> - Write a Bash script that displays the content of the current directory in a list format where only the part of the name after the first dash is displayed.
  </summary>
  <ul>
    <li>You must use the for loop (while and until are forbidden).</li>
    <li>Do not display hidden files.</li>
  </ul>
</details>

<details>
  <summary>
    <code>9-to_file_or_not_to_file</code> - Write a Bash script that gives you information about the school file.
  </summary>
  <ul>
    <li>You must use if and else (case is forbidden).</li>
  </ul>
  <p>If the file exists:</p>
  <ul>
    <li>school file exists</li>
    <li>If the file is empty: school file is empty</li>
    <li>If the file is not empty: school file is not empty</li>
    <li>If the file is a regular file: school is a regular file</li>
    <li>If the file is not a regular file: (nothing)</li>
  </ul>
</details>

<details>
  <summary>
    <code>10-fizzbuzz</code> - Write a Bash script that displays numbers from 1 to 100.
  </summary>
  <ul>
    <li>Displays FizzBuzz when the number is a multiple of 3 and 5</li>
    <li>Displays Fizz when the number is multiple of 3</li>
    <li>Displays Buzz when the number is a multiple of 5</li>
    <li>Otherwise, displays the number</li>
    <li>In a list format</li>
  </ul>
</details>

## Advanced

<details>
  <summary>
    <code>100-read_and_cut</code> - Write a Bash script that displays the content of the file /etc/passwd with specific information.
  </summary>
  <ul>
    <li>You must use the while loop (for and until are forbidden).</li>
  </ul>
</details>

<details>
  <summary>
    <code>101-tell_the_story_of_passwd</code> - Write a Bash script that tells a story based on the content of the file /etc/passwd using the while loop and IFS.
  </summary>
  <ul>
    <li>You must use the while loop (for and until are forbidden).</li>
  </ul>
</details>

<details>
  <summary>
    <code>102-lets_parse_apache_logs</code> - Write a Bash script that displays the visitor IP along with the HTTP status code from the Apache log file.
  </summary>
  <ul>
    <li>Format: IP HTTP_CODE</li>
    <li>In a list format</li>
    <li>You must use awk</li>
    <li>You are not allowed to use while, for, until, and cut</li>
  </ul>
</details>

<details>
  <summary>
    <code>103-dig_the-data</code> - Write a Bash script that groups visitors by IP and HTTP status code, and displays this data.
  </summary>
  <ul>
    <li>The exact format must be: OCCURRENCE_NUMBER IP HTTP_CODE</li>
    <li>In list format</li>
    <li>Ordered from the greatest to the lowest number of occurrences</li>
    <li>You must use awk</li>
    <li>You are not allowed to use while, for, until, and cut</li>
  </ul>
</details>


