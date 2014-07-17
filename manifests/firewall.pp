class strongswan::firewall
{
firewall { '001 allow IKE':
  ensure  => 'present',
  action  => 'accept',
  chain   => 'INPUT',
  sport   => ['500'],
  dport   => ['500'],
  proto   => 'udp',
  }->
firewall { '002 ESP Traffic':
  ensure  => 'present',
  action  => 'accept',
  chain   => 'INPUT',
  proto   => 'esp',
  iniface => 'eth0',
  }->
firewall { '003 allow ipsec policy':
  ensure        => 'present',
  action        => 'accept',
  chain         => 'INPUT',
  ipsec_dir     => 'in',
  proto         => 'esp',
  ipsec_policy  => 'ipsec',
  }
}
