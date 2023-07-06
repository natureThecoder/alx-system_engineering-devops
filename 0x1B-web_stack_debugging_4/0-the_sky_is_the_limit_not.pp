# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
file { '/etc/default/nginx':
  ensure  => file,
  content => "ULIMIT ='-n 2048'\n",
}
