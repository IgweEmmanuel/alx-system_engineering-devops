#This manifest uses package resource to install flask

exec { 'flask':
  ensure   => '2.1.0',
  command  => '/usr/bin/python3 pip install flask -v 2.1.0',
  provider => 'pip3',
}
