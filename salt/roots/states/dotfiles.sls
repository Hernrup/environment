/src:
  file.directory:
    - user:  mhe
    - name:  /src
    - group: mhe
    - mode:  755

dotfiles:
  git.latest:
    - name: https://github.com/Hernrup/dotfiles.git
    - target: /src/dotfiles
    - user: mhe
    - rev: master
    - force_reset: True
    - require:
      - /src
