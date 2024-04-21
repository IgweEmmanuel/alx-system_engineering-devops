#This file will create a connection to ubuntu server without password
file { 'turn_of_passord_authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '  PasswordAuthenticaton no',
}

file { 'identify_file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdenfityFile ~/.ssh/school',
}
