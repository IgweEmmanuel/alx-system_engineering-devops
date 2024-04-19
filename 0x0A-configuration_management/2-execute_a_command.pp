#The exec resource to kill a process named killyounow
exec { 'kill_process':
  command     => 'pkill killmenow',
  path        => '/bin:/usr/bin',
  refreshonly => true,
}

