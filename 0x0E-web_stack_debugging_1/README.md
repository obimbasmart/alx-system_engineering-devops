# Web stack debugging #1

> The Webstack debugging are series of project provided by `ALX_SE` to train me in the art of debugging. Computers and software rarely work the way we want (that’s the “fun” part of the job!). In this debugging series, broken/bugged webstacks has been given to me, the final goal is to come up with a Bash script that once executed, will bring the webstack to a working state. 


### Task 00 - `0-nginx_likes_port_80`
Using your debugging skills, find out what’s keeping your Ubuntu container’s `Nginx` installation from listening on port `80`. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.
- `Nginx` must be running, and listening on port `80` of all the server’s active `IPv4` `IPs`
- Write a Bash script that configures a server to the above requirements


### Task 01 -advanced - `1-debugging_made_short`
Using what you did for task #0, make your fix short and sweet.

- Your Bash script must be `5` lines long or less
- There must be a new line at the end of the file
- You must respect usual Bash script requirements
- You cannot use `;`
- You cannot use `&&`
- You cannot use `wget`
- You cannot execute your previous answer file (Do not include the name of - the previous script in this one)
- service (init) must say that nginx is not running ← for real