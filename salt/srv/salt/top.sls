base:
  'saltmaster':
    - users
    - salt.master
    - unix_dev_environment
  'mh':
    - users
    - python_win
    - cygwin
  'mh-wsl':
    - users
    - unix_dev_environment
    - nodejs
    - php_dev_environment
