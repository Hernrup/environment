base:
  'mh-wsl':
    - core
    - git
    - shell
    - users
    - sshd
    - python
    - dotfiles
    - ssl
    - vim8
    - base16shell
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
