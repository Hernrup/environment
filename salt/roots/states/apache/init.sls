apache2:
  pkg:
    - installed
  service:
    - running
    - reload: True
  - watch:
    - file: /etc/apache2/apache2.conf


/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://apache/apache2.conf


libapache2-mod-php5:
  pkg:
    - installed
