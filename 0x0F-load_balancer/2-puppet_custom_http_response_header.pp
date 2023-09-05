# Configure Nginx with a custom HTTP header

exec {'update_packages':
  provider => shell,
  command  => 'sudo apt-get -y update',
  before   => Exec['install_nginx'],
}

exec {'install_nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['configure_custom_header'],
}

exec { 'configure_custom_header':
  provider    => shell,
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  before      => Exec['restart_nginx'],
}

exec { 'restart_nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}

