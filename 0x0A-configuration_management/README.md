# Configuration management

Configuration managment is great, in that  it helps in automating workflow provisioning using Puppet, a popular configuration management tool capable of managing complex infrastructure in a transparent. In this project, I've written basci puppet manifests that automate task on my linux OS. This would come in handy when managing servers and infastructures
# Tasks

- `0-create_a_file.pp` - Using Puppet, create a file in `/tmp.`
    - File path is `/tmp/school`
    - File permission is `0744`
    - File owner is www-data
    - File group is `www-data`
    - File contains `I love Puppet`
    
- `1-install_a_package.pp` - Using Puppet, install flask from pip3.
    - Install `flask`
    - Version must be `2.1.0`

- `2-execute_a_command.pp` - Using Puppet, create a manifest that kills a process named `killmenow`.
    - Must use the exec Puppet resource
    - Must use pkill
