wheel:
  group.present:
    - system: True

/etc/sudoers.d/wheel:
  file.managed:
    - user: root
    - group: root
    - mode: 640
    - contents: "%wheel     ALL=(ALL)     NOPASSWD: ALL\n"
    - require:
      - group: wheel

{% for name, user in pillar.get('users', {}).items() %}
{{name}}:
  user.{{user.state}}:
  {% if user.state == 'present' %}
    - fullname: {{user.fullname}}
    - shell: {{user.shell}}
    - password: {{user.password}}
    - empty_password: {{user.empty_password}}
    - home: {{user.home}}
    - uid: {{user.uid}}
    - groups: {{user.groups}}
ssh_key_{{name}}:
  ssh_auth:
    - present
    - user: {{name}}
    - names:
      - {{user.pubkey}}
    - require:
      - user: {{ name }}
  {% elif user.state == 'absent' %}
    - purge: {{user.purge}}
  {% endif %}
{% endfor %}
