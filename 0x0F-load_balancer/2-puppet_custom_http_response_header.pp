#!/usr/bin/env bash
# configure a new nginx web server and add custom HTTP header

# install nginx
exec { 'update_repo':
  command => 'sudo apt-get -y update',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

exec { 'install_nginx':
  command => 'sudo apt-get -y install nginx',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

# change permission
file { '/var/www/html/index.nginx-debian.html':
  ensure  => present,
  content => 'Breadwinner why ?!',
  recurse => true,
  owner   => 'obimbasmart',
  group   => 'obimbasmart'
}

exec { 'change_file_permission':
  command => 'sudo chown -R "$USER:$USER" /etc/nginx/',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

file { '/etc/nginx/nginx.conf':
  ensure  => present,
  content => '
user www-data;
worker_processes auto;
pid /run/nginx.pid;
include /etc/nginx/modules-enabled/*.conf;

events {
	worker_connections 768;
	# multi_accept on;
}

http {

	##
	# Basic Settings
	##

	sendfile on;
	tcp_nopush on;
	tcp_nodelay on;
	keepalive_timeout 65;
	types_hash_max_size 2048;
	# server_tokens off;
	add_header X-Served-By $hostname;


	include /etc/nginx/mime.types;
	default_type application/octet-stream;

	ssl_protocols TLSv1 TLSv1.1 TLSv1.2 TLSv1.3; # Dropping SSLv3, ref: POODLE
	ssl_prefer_server_ciphers on;

	access_log /var/log/nginx/access.log;
	error_log /var/log/nginx/error.log;

	gzip on;

	include /etc/nginx/conf.d/*.conf;
	include /etc/nginx/sites-enabled/*;
}',
}


exec { 'check_configuration':
  command => 'sudo nginx -t',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}


exec { 'restart_nginx':
  command => 'sudo service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}
