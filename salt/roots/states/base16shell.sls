base16shell_src:
  git.latest:
    - name: https://github.com/chriskempson/base16-shell.git
    - target: /home/mhe/.config/base16-shell
    - user: mhe
    - rev: master
    - force_reset: True
    - require:
      - user: mhe
