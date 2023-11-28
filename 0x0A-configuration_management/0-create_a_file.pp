# create a file in /tmp folder and validate the content

file { '/tmp/school':
    ensure  => present,
    content => 'I love Puppet',
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0744'
}

