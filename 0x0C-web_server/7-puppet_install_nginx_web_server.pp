# install and configure nginx on web server


# update package list
exec { 'update package-list':
  command => 'apt-get update',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

# install nginx
package { 'nginx':
  ensure   => installed,
  provider => 'apt',
}

# change file ownership to current user
exec { 'change owner':
  command => 'chown -R $USER:$USER /var/www/html',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

# update index file
file { '/var/www/html/index.nginx-debian.html':
  ensure  => present,
  content => 'Hello World!'
}

# custom 404 page
file { '/var/www/html/404.html':
  ensure  => present,
  content => "Ceci n\'est pas une page"
}

# udpate config file and redirects
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content =>

"
# Default server configuration
#
server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;

	server_name _;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files \$uri \$uri/ =404;
	}

	#

	# deny access to .htaccess files, if Apache's document root
	# concurs with nginx's one
	#
	#location ~ /\.ht {
	#	deny all;
	#}

	location /redirect_me {
		return 301 http://new-destination.com;
	}

	error_page 404 /404.html;
	location /404.html {
		root /var/www/html/;
		internal;
	}

}

",
}


# check configurations
exec { 'check nginx configs':
  command   => 'nginx -t',
  path      => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin',
  logoutput => true
}

# restart nginx
exec { 'restart nginx':
  command => 'service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
}

# ensure nginx is running
service { 'nginx':
  ensure => running
}

