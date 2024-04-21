#This manifest uses package resource to install flask
exec { 'flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
