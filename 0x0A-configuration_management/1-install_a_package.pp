# install_flask.pp

# Install Flask using pip3
package { 'python3-pip':
  ensure => present,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/pip3 show Flask | grep Version | grep -q 2.1.0',
}

# Notify that the installation is completed
notify { 'Flask installation completed':
  require => Exec['install_flask'],
}

