# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location = /redirect_me {
        return 301 http://www.example.com;
    }
}
",
  notify  => Service['nginx'],
}

# Create a simple HTML file with Hello World content
file { '/var/www/html/index.html':
  ensure  => file,
  content => "<!DOCTYPE html><html><body><h1>Hello World!</h1></body></html>",
}

# Restart Nginx service
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}
