#This manifest uses package resource to install flask
package { ['python3', 'python3-pip', 'build-essential', 'libssl-dev', 'libffi-dev', 'python3-dev']:
  ensure => 'installed',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'],
  creates => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
  require => Package['python3-pip', 'build-essential', 'libssl-dev', 'libffi-dev', 'python3-dev'],
}
