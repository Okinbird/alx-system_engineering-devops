# Increase limit of Nginx server traffic request
exec { 'Request':
  path    => ['/bin'],
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 5000\"/" /etc/default/nginx',
  notify  => Service['nginx'],
}
service { 'Nginx':
  ensure => running,
  enable => true,
}
}
-> exec { 'restart service':
  command => '/usr/sbin/service nginx restart',
}
