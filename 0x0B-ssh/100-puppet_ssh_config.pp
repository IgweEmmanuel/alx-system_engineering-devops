#This file will create a connection to ubuntu server without password
file_line { 'turn of passord authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file_line { 'identify file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentifyFile ~/.ssh/school',
}
