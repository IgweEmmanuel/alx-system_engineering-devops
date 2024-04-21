#This file will create a connection to ubuntu server without password
file_line { 'turn_of_passord_authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '  PasswordAuthentication no',
}

file_line { 'identify_file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentifyFile ~/.ssh/school',
}