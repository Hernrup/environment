# php5_ppa:
#   pkgrepo.managed:
#     - ppa: ondrej/php

php5-fpm:
  pkg.latest:
    - force_yes: true
    - names:
      - php7.0-fpm
      - php7.0-cli
      - php7.0-dev
      - php7.0-intl
      - php7.0-mcrypt
      - php7.0-curl
      - php7.0-mysql
      - php7.0-xdebug
  service.running:
    - watch:
      - file: /etc/php/7.0/fpm/php.ini
      - file: /etc/php/mods-available/xdebug.ini

php-ini:
  file.managed:
    - name: /etc/php/7.0/fpm/php.ini
    - source: salt://_files/php/php.ini
    - template: jinja
    - require:
      - pkg: php-fpm

/var/lib/php:
  file:
    - directory
    - user: www-data
    - group: vagrant
    - mode: 775
    - makedirs: True
    - require:
      - pkg: php-fpm

php-cli-ini:
  file.managed:
    - name: /etc/php/cli/php.ini
    - source: salt://_files/php/php-cli.ini
    - template: jinja
    - require:
      - file: php-ini

xdebug-ini:
  file.managed:
    - name: /etc/php/mods-available/xdebug.ini
    - source: salt://_files/php/xdebug.ini
    - template: jinja
    - require:
      - pkg: php5-fpm

xdebug-cli-env-var-php-ide-config:
  cmd.run:
    - name: echo 'export PHP_IDE_CONFIG="serverName=phpsaltbox"' >> /home/vagrant/.bashrc
    - unless: grep 'PHP_IDE_CONFIG' /home/vagrant/.bashrc

xdebug-cli-env-var-xdebug-config:
  cmd.run:
    - name: echo 'export XDEBUG_CONFIG="remote_host=192.168.33.1 idekey=phpsaltbox"' >> /home/vagrant/.bashrc
    - unless: grep 'XDEBUG_CONFIG' /home/vagrant/.bashrc
