include:
  - python_build_tools

/src:
  file.directory:
    - user:  mhe
    - name:  /home/mhe/src
    - group: mhe
    - mode:  755
    - require:
      - user: mhe

dotfiles:
  git.latest:
    - name: https://github.com/Hernrup/dotfiles.git
    - target: /home/mhe/src/dotfiles
    - user: mhe
    - rev: master
    - force_reset: True
    - require:
      - /src
      - user: mhe

install_dotfiles_for_mhe:
  cmd.run:
    - name: python3 install_dot_files.py /home/mhe
    - cwd: /home/mhe/src/dotfiles
    - require:
      - python
      - dotfiles
      - user: mhe
      - python_build_tools
