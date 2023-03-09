# Increase limit of Nginx server traffic request
exec { 'Request':
  path => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 5000\"/g" /etc/default/nginx',
}
-> exec { 'restart service':
  command => '/usr/sbin/service nginx restart',
}
