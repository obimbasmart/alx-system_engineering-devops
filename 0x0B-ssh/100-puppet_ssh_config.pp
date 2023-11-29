# ensure config file is applied to client

file { '/etc/ssh/ssh_config':
    ensure => present,
    content => "
    HOST my_alx_server
    	HostName 107.23.95.20
	User ubuntu
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
",
}

