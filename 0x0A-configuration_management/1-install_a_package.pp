# manifest.pp

# Install the puppetlabs-stdlib module
class { 'stdlib': }

# Ensure that 'pip3' is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 and pin werkzeug to version 2.0.1 (a version that is compatible with Flask 2.1.0)
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'],
}

package { 'werkzeug':
  ensure   => '2.0.1',
  provider => 'pip',
  require  => Package['python3-pip'],
}
