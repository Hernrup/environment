base:
  'saltmaster':
    - users
    - salt
    - sshd
  'll-unix-ws':
    - users
  'mh-unix-ws':
    - users
  'mh-wsl':
    - users
    - sshd_wsl
    - nginx
    - php
