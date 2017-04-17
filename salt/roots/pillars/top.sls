base:
  'saltmaster':
    - salt
  'mh-wsl':
    - users
    - sshd_wsl
  'dev':
    - users
    - configs
    - sshd
