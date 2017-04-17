
# http://docs.saltstack.com/en/latest/ref/states/all/salt.states.composer.html
composer_home:
   environ.setenv:
     - name: COMPOSER_HOME
     - value: /root
     - update_minion: True

get-composer:
  cmd.run:
    - name: 'CURL=`which curl`; $CURL -sS https://getcomposer.org/installer | php'
    - unless: test -f /usr/local/bin/composer
    - cwd: /root/
    - require:
      - pkg: php7.0-cli
      - composer_home

install-composer:
  cmd.wait:
    - name: mv /root/composer.phar /usr/local/bin/composer
    - cwd: /root/
    - watch:
      - cmd: get-composer
