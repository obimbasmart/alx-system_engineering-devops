#!/usr/bin/env bash
# configure a new nginx web server and add custom HTTP header

exec { 'update_repo':
  command => 'sudo apt-get -y update',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

# install nginx
package { 'nginx':
  ensure   => installed,
  provider => 'apt'
}


# change permission
file { '/var/www/html/index.nginx-debian.html':
  ensure  => present,
  content => 'Breadwinner why ?!',
  recurse => true,
  owner   => $facts['identity']['user'],
  group   => $facts['identity']['user']
}

exec { 'change_file_permission':
  command => 'sudo chown -R "$USER:$USER" /etc/nginx/',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

exec { 'add_served_by_header':
  command => "sed -i '/# server_tokens off;/a add_header X-Served-By ${hostname};' /etc/nginx/nginx.conf",
  unless  => "grep -q 'add_header X-Served-By' /etc/nginx/nginx.conf",
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}


exec { 'check_configuration':
  command   => 'sudo nginx -t',
  path      => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin',
  logoutput => true
}

exec { 'restart_nginx':
  command => 'sudo service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}
