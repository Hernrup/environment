python:
  pkg.installed:
    - pkgs:
      - python3

python-pip:
  pkg.installed:
    - pkgs:
      - python-pip
      - python3-pip

flake8:
  pip.installed:
    - name: flake8
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
