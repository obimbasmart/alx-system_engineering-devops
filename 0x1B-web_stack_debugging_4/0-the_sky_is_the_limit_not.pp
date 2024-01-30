## fix `Too many open file` error on nginx


exec { 'change-ULIMIT':
  command => 'sed -i "s/ULIMIT=\"-n 321\"/ULIMIT=\"-n 9999\"/" /etc/default/nginx',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# restart nginx
exec { 'nginx-restart':
  command => 'service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
}

