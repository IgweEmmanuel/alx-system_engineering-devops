#This is using puppet file to configure remote server
file { '~/.ssh/config':
  ensure  => 'present',
  content => "
Host ubuntu@18.207.139.77
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
",
  owner   => 'ubuntu',
  group   => 'ubuntu',
}
