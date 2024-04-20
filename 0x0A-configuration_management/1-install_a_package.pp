#This manifest uses package resource to install flask
package { 'python3-pip':
  ensure => installed,
}

exec { 'flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'],
}
