https://github.com/jokkedk/webgrind.git:
  git.latest:
    - user: www-data
    - rev: master
    - target: /var/www/tools/webgrind
    - require:
      - /var/www/tools
