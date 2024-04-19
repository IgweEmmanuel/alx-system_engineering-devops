#This is using package resource to install flask

package { 'flask':
  ensure         => 'installed',
  install_options => ['-v', '2.1.0'],
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
}
