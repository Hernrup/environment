base:
  'saltmaster':
    - users
    - salt
    - sshd
  'mh-wsl':
    - users
    - sshd_wsl
    - nginx
    - php
