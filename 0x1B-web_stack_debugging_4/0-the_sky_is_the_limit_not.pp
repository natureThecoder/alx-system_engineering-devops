# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
  onlyif  => 'grep -q "^ULIMIT=4096" /etc/default/nginx',
} 

# Restart Nginx
exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  refreshonly => true,
}
