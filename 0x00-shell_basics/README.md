# Shell, Basics
> ✔️  From `ls`  to `echo`, I've conducted a melodious dance with the terminal 🎇🎇🎇🎈

## Mandatory tasks
<details>
 <summary> <code>0-current_working_directory</code> - Write a script that prints the absolute path name of the current working directory.</summary>
</details>

<details>
 <summary> <code>1-listit</code> - Display the contents list of your current directory.</summary>
</details>

<details>
 <summary> <code>2-bring_me_home</code> - Write a script that changes the working directory to the user’s home directory.</summary>
 <ul>
  <li>You are not allowed to use any shell variables</li>
 </ul>
</details>

<details>
 <summary> <code>3-listfiles</code> - Display current directory contents in a long format</summary>
 <pre>
   <code>
    total 32
    -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
    -rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
    -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
    -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
   </code>
 </pre>
</details>

<details>
 <summary> <code>4-listmorefiles</code> - Display current directory contents, including hidden files (starting with .). Use the long format.</summary>
 <pre>
   <code>
    total 32
    -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
    -rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
    -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
    -rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
    drwxr-xr-x@ 2 sylvain staff 64 Jan 25 00:39 dir1
    drwxr-xr-x@ 2 sylvain staff 64 Jan 25 00:39 dir2
    -rw-r--r--@ 1 sylvain staff 32 Jan 25 00:39 file.txt
    -rw-r--r--@ 1 sylvain staff 32 Jan 25 00:39 .hiddenfile
   </code>
 </pre>
</details>


<details>
 <summary> <code>5-listfilesdigitonly</code> - Display current directory contents.</summary>
 <pre>
   <code>
    total 32
    drwxr-xr-x@ 6 501 20 204 Jan 25 00:29 .
    drwxr-xr-x@ 43 501 20 1462 Jan 25 00:19 ..
    -rwxr-xr-x@ 1 501 20 18 Jan 25 00:19 0-current_working_directory
    -rwxr-xr-x@ 1 501 20 18 Jan 25 00:23 1-listfiles
    -rwxr-xr-x@ 1 501 20 19 Jan 25 00:29 2-bring_me_home
    -rwxr-xr-x@ 1 501 20 20 Jan 25 00:39 3-listfiles
    -rwxr-xr-x@ 1 501 20 18 Jan 25 00:41 4-listmorefiles
    -rwxr-xr-x@ 1 501 20 18 Jan 25 00:43 5-listfilesdigitonly
   </code>
 </pre>
</details>

<details>
 <summary><code>6-firstdirectory</code> - Create a script that creates a directory named <em>my_first_directory</em> in the <em>/tmp/</em> directory.</summary>
</details>

<details>
 <summary><code>7-movethatfile</code> - Move the file <em>betty</em> from <em>/tmp/</em> to <em>/tmp/my_first_directory</em>.</summary>
</details>

<details>
 <summary><code>8-firstdelete</code> - Delete the file <em>betty</em> from <em>/tmp/my_first_directory</em>.</summary>
</details>

<details>
 <summary><code>9-firstdeletion</code> - Delete the directory <em>my_first_directory</em> from <em>/tmp</em> directory.</summary>
</details>

<details>
 <summary> <code>10-back</code> - Write a script that changes the working directory to the previous one.</summary>
</details>

<details>
 <summary> <code>11-lists</code> - Write a script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.</summary>
</details>

<details>
 <summary><code>12-file_type</code> - Write a script that prints the type of the file named iamafile. The file iamafile will be in the /tmp directory when we will run your script.</summary>
</details>


<details>
 <summary> <code>13-symbolic_link</code> - Create a symbolic link to /bin/ls, named __ls__. The symbolic link should be created in the current working directory.</summary>
</details>

<details>
 <summary> <code>14-copy_html</code> - Create a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.</summary>
</details>


## Advanced tasks

<details>
 <summary><code>100-lets_move</code> - Create a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent directory or were newer than the versions in the parent directory.</summary>
</details>

<details>
 <summary><code>101-clean_emacs</code> - Create a script that moves all files beginning with an uppercase letter to the directory <code>/tmp/u</code>.</summary>
</details>

<details>
 <summary><code>103-commas</code> - Create a script that deletes all files in the current working directory that end with the character ~.</summary>
</details>

<details>
 <summary><code>13-create_welcome</code> - Create a script that creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory.</summary>
</details>

<details>
  <summary><code>school.mgc</code> - Write a command that lists all the files and directories of the current directory, separated by commas (,).</summary>
  <ul>
    <li>Directory names should end with a slash (/)</li>
    <li>Files and directories starting with a dot (.) should be listed</li>
    <li>The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning</li>
    <li>Only digits and letters are used to sort; Digits should come first</li>
    <li>You can assume that all the files we will test with will have at least one letter or one digit</li>
    <li>The listing should end with a new line</li>
  </ul>
</details>





