#This file will create a connection to ubuntu server without password
file { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/config',
  line   => '    IdentifyFile ~/.ssh/school',
}
