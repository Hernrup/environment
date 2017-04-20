openssh-server:
  pkg.installed

openssh-client:
  pkg.installed

ssh:
  service.running:
    - require:
      - pkg: openssh-client
      - pkg: openssh-server
      - file: /etc/ssh/sshd_config

/etc/ssh/sshd_config:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - source: salt://sshd/sshd_config
    - require:
      - pkg: openssh-server
