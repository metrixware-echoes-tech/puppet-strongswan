####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with strongswan](#setup)
    * [What strongswan affects](#what-strongswan-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with strongswan](#beginning-with-strongswan)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - How to contribute to the module](#development)

##Overview

This module installs and configures a IPsec connection with pre-shared pass.

##Module Description

This module handles StrongSwan installation, configuration and services on Debian Systems.

##Setup

###What strongswan affects

  * strongswan configuration file :
    - /etc/ipsec.conf: IPsec configuration file.
    - /etc/ipsec.secret: Pre-shared pass.
  * strongswan service
  * strongswan package

###Beginning with strongswan  

Each node just needs this minimal declaration :

```puppet
    class { 'strongswan' :
      remote_public_ip        => <public_IP_of_remote_VPN_server>,
      host_public_ip          => <public_IP_of_local_server>,
      remote_private_network  => <private_network_address_of_remote_VPN_server>,
      host_private_network    => <private_network_address_of_local_server>,
      pass                    => <your_pass>
    }
```

##Reference


####`remote_public_ip`
  Public address of the remote vpn server
  Default : undef

####`host_public_ip`
  Public address of the local vpn server
  Default : undef

####`remote_private_network`
  Private network address of the remote vpn server
  Netmask needed :
  Example : 172.16.0.0/16
  Default : undef

####`host_private_network`
  Private network address of the local vpn server
  Netmask needed :
  example : 192.168.56.0/24
  Default : undef
  
####`connection_name`
  Name of the connection
  Default : myconn

####`package`
  Package name to install
  Default : system dependent (only Debian is supported)

####`pass`
  Pre shared pass
  Default : pass

##Limitations

This module only supports Debian systems.

##Development

Issues can be reported on [github issues tracker](https://github.com/echoes-tech/puppet-strongswan/issues)
