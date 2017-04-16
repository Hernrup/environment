base:
  'saltmaster':
    - salt

  '*':
    - users
    - configs
