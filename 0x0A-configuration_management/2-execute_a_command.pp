#The exec resource to kill a process named killyounow
exec { 'killmenow':
  command  => 'pkill killmenow',
  path     => '/bin:/usr/bin',
  provider => 'shell',
}

