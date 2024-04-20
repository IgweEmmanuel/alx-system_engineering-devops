#This manifest uses package resource to install flask

exec { 'flask':
  command => '/usr/bin/sudo pip3 install flask -v 2.1.0',
}
