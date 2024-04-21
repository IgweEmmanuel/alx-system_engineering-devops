#This is using puppet file to configure remote server
file { 'access without password':
  ensure  => 'present',
  content => "
Host ubuntu@18.207.139.77
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
",
}
