# Firewall
> Firewalls heps monitor and controls incoming and outgoing network traffic based on some set rules. In this project I have installed and configured `ufw` firewall on my web stack to deny all incomiming connections but allow incoming connection on
- port `22`: for `ssh` connections
- port `80`: for `http` connections
- port `443`: for `https` connections via `SSL/TSL`

In addition, I have also allowed a redirect from port `8080` to port `80`

![.](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/284/V1HjQ1Y.png)

## Tasks
- `0-block_all_incoming_traffic_but` - set up  and configure firewall
- `100-port_forwarding` - redirect traffic from port 8080 to port 80
