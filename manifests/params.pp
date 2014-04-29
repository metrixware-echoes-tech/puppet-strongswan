class strongswan::params {
  $remote_public_ip         = undef
  $host_public_ip           = undef
  $remote_private_network   = undef
  $host_private_network     = undef

case $::osfamily {
  debian: {
  $package  = 'strongswan'
  }
  default: {
    fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
  }
  }
}
