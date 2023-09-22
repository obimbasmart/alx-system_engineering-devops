# Command line for the win

This project provided an opportunity to enhance my Bash scripting and Linux command skills by tackling various command-line challenges. As I progressed through different tasks, I encountered increasing levels of complexity. Despite the challenges, I found the project enjoyable and gained valuable insights.

One key lesson was mastering the find command and efficiently passing search results between Linux commands. For example, consider this command:

`find . -type f -name "*.txt" -exec sed -i "s/school//g" {} \`

This command efficiently locates all `.txt` files within the current directory and its subdirectories. It then employs the sed command, with the help of `-exec`, to remove occurrences of `"school"` from each file. This demonstrated the power of command chaining in Linux.

## Using `SFTP`
In addition to completing the project tasks, I also made use of the `SFTP` (Secure File Transfer Protocol) command-line tool to move images from my local computer to the sandbox environment. Below are the step by step guild:

### Etablishing connection
- I created a connection with the sandbox enviroment using ssh connection. This requires the `username` and  `password`
    - `obimbasmart@MyXubuntu:~$ sftp username`
- Next input password. If everthing goes right, you'll have an interactive session that looks like this:
    - `sftp>`

### Uploading files
- To transfer files from local machines to the sandbox environment, I use the sftp `put` command. The command takes the source_file and the destination folder: e.g
    - `sftp> put local_file.txt destination_folder/`
    - This would transfer the file local_file.txt to the folder destination_folder in the sandbox environment
    - For this project, the command used is:
    - `sftp> put /alx_repos/alx-system_engineering-devops/command_line_for_the_win/*.png /root/alx-system_engineering-devops/command_line_for_the_win/`
    - This would transfer all screenshots with .png file to the sandbox environment in the specified directory
    - Make sure the destination folder specified already exist in the sandbox environment
