# kill a process named killmenow

exec { 'kill_that_process':
    command => 'pkill -f killmenow',
    path    => '/usr/bin'
}
