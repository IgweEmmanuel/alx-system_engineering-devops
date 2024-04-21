#This file will create a connection to ubuntu server without password
file { 'turn of passord authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  command   => '    PasswordAuthentication no',
}

file { 'identify file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  command   => '    IdentifyFile ~/.ssh/school',
}
