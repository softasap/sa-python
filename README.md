sa-python
=========

[![Build Status](https://travis-ci.org/softasap/sa-python.svg?branch=master)](https://travis-ci.org/softasap/sa-python)
[![Includes support for Windows with PS5](https://img.shields.io/badge/Windows-Friendly-blue.svg)](https://img.shields.io/badge/Windows-Friendly-blue.svg)

installs and updates pip to the most recent version

Note: alpine support is experimental for now.

Example of usage (all parameters are optional)

Simple

```YAML
  roles:
    - {
        role: "sa-python"
      }
```

Advanced:

```YAML
  roles:
    - {
        role: "sa-python"
      }
```


# Windows support

For windows support we expect, that box is prepared for provisioning with ansible (best used with role  https://github.com/softasap/sa-box-bootstrap-win ,
but if you configured the same setup manually will work too )

Example of the typical windows play:

```YAML

vars:
  - root_dir: ..

  - ansible_connection: winrm
  - ansible_ssh_port: 5986
  - ansible_winrm_server_cert_validation: ignore
  - ansible_winrm_transport: ssl


pre_tasks:
  - debug: msg="Pre tasks section"

  - name: gather facts
    setup:

roles:
   - {
       role: "sa-python"
     }

```


Copyright and license
---------------------

Code is dual licensed under the [BSD 3 clause] (https://opensource.org/licenses/BSD-3-Clause) and the [MIT License] (http://opensource.org/licenses/MIT). Choose the one that suits you best.

Reach us:

Subscribe for roles updates at [FB] (https://www.facebook.com/SoftAsap/)

Join gitter discussion channel at [Gitter](https://gitter.im/softasap)

Discover other roles at  http://www.softasap.com/roles/registry_generated.html

visit our blog at http://www.softasap.com/blog/archive.html


