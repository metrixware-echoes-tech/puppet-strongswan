# Strongswan

This module installs and configure a IPsec connection with pre-shared pass.

## Getting start

```puppet
    class { 'echoes_strongswan' :
      remote_public_ip        => <public_IP_of_remote_VPN_server>,
      host_public_ip          => <public_IP_of_local_server>,
      remote_private_network  => <private_network_address_of_remote_VPN_server>,
      host_private_network    => <private_network_address_of_local_server>,
      pass                    => <your_pass>
    }
```

License
-------

Copyright (C) 2014 Echoes Technologies <contact@echoes-tech.fr>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

