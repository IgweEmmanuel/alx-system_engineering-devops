#This is using puppet file to configure remote server
file { '~/.ssh/config':
  ensure  => 'present',
  command => "
Host your_server_hostname
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
",
  owner   => 'ubuntu',
  group   => 'ubuntu',
}
