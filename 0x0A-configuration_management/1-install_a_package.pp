#This manifest uses package resource to install flask
exec { 'python3-venv':
  command => 'sudo apt install python3-venv',
}

exec { 'venv':
  command => 'python3 -m venv venv',
}

exec { 'activate':
  command => 'source venv/bin/activate',
}

exec { 'flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/bin',
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
}
