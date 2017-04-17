base:
  'mh-wsl':
    - core
    - git
    - shell
    - users
    - sshd
    - python
    - dotfiles
  'dev':
    - core
    - git
    - shell
    - users
    # - desktop
    - dotfiles
    - ssl
    - git
    - nodejs
    - nginx
    - php
    - composer
    - mysql
    - redis
    - tools.phpmyadmin
    - tools.webgrind
    - kdiff
    - sshd
  'saltmaster':
    - salt.master
