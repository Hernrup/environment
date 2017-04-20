https://github.com/phpmyadmin/phpmyadmin.git:
  git.latest:
    - user: www-data
    - rev: STABLE
    - target: /var/www/tools/phpmyadmin
    - require:
      - /var/www/tools
