nginx_ppa:
  pkgrepo.managed:
    - ppa: nginx/stable

nginx:
  pkg.latest:
    - refresh: True
    - require:
      - pkgrepo: nginx_ppa
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-enabled/tools
      - file: /etc/nginx/sites-enabled/application
      - pkg: nginx

/var/www/application/public:
  file:
    - directory
    - user: www-data
    - group: www-data
    - mode: 775
    - makedirs: True

/var/www/tools:
  file:
    - directory
    - user: www-data
    - group: www-data
    - mode: 775
    - makedirs: True

nginx-conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/conf/nginx.conf
    - template: jinja
    - require:
      - file: /var/www/application/public
      - file: /var/www/tools
      - pkg: nginx

nginx-remove-senabled-default:
  file.absent:
    - name: /etc/nginx/sites-enabled/default
    - require:
      - file: nginx-conf
      - pkg: nginx

nginx-vhost-application:
  file.managed:
    - name: /etc/nginx/sites-available/application
    - source: salt://nginx/vhosts/application
    - template: jinja
    - require:
      - file: nginx-conf
      - pkg: nginx
      - nginx-remove-senabled-default

nginx-vhost-application-enabled:
  file.symlink:
    - name: /etc/nginx/sites-enabled/application
    - target: /etc/nginx/sites-available/application
    - require:
      - file: nginx-vhost-application

nginx-vhost-tools:
  file.managed:
    - name: /etc/nginx/sites-available/tools
    - source: salt://nginx/vhosts/tools
    - template: jinja
    - require:
      - file: nginx-vhost-application
      - pkg: nginx

nginx-vhost-tools-enabled:
  file.symlink:
    - name: /etc/nginx/sites-enabled/tools
    - target: /etc/nginx/sites-available/tools
    - require:
      - file: nginx-vhost-tools
