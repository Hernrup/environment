base:
  'saltmaster':
    - users
    - salt
    - sshd
  'mh-unix-ws':
    - users
  'mh-wsl':
    - users
    - sshd_wsl
    - nginx
    - php
