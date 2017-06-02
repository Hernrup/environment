base:
  'saltmaster':
    - users
    - salt.master
    - unix_dev_environment
  'mh':
    - users
    - python_win
    - cygwin
  '72M43H2':
    - users
    - unix_dev_environment
    - desktop
    - chrome
    - docker
    - docker.compose
    - packer
    - terraform
  'll-unix-ws':
    - users
    - unix_dev_environment
    - desktop
    - chrome
    - packer
    - docker
    - docker.compose
    - terraform
    - consul.install
    - consul.service
    - consul-template
  'mh-unix-ws':
    - users
    - unix_dev_environment
    - desktop
    - chrome
    - docker
    - docker.compose
  'mh-wsl':
    - users
    - sshd
    - unix_dev_environment
    - nodejs
    - php_dev_environment
