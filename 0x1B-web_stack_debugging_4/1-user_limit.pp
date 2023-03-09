# Changes user limit
exec { 'increase hard limit':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "s/holberton hard nofile 5/holberton hard nofile 5000/" /etc/security/limits.conf',
}

exec { 'increase soft limit':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "s/holberton soft nofile 4/holberton soft nofile 4000/" /etc/security/limits.conf',
}
-> exwc { 'refresh conf':
  command => '/sbin/sysdctl -p',
}