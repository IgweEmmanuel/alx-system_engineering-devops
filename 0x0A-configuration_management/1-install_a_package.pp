#This manifest uses package resource to install flask
package { 'python3-pip':
  ensure => installed,
}

exec { 'installed_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  environment => [],
}

file { '/usr/local/bin/flask':
  ensure => link,
  target => '/usr/bin/flask',
}
