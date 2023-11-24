exec { 'install_puppet_lint':
  command => '/usr/bin/gem install -v 1.1.0 --no-document puppet-lint',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/gem list -i puppet-lint -v 1.1.0',
}

