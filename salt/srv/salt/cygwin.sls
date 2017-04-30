include:
  - windows
  - python_win

mhe:
  user.present

cygwin_installed:
  cyg.binaries_installed


cygwin_src_dir:
  file.directory:
    - user:  mhe
    - name:  'C:\\cygwin64\home\mhe\src'
    - makedirs: True
    - group: mhe
    - require:
      - user: mhe

windows_git_installed:
  pkg.installed:
    - name: git

dotfiles:
  git.latest:
    - name: https://github.com/Hernrup/dotfiles.git
    - target: C:\\cygwin64\home\mhe\src\dotfiles
    - user: mhe
    - rev: master
    - force_reset: True
    - require:
      - cygwin_src_dir
      - windows_git_installed

install_dotfiles_for_mhe:
  cmd.run:
    - name: python install_dot_files.py C:\\cygwin64\home\mhe
    - cwd: C:\\cygwin64\home\mhe\src\dotfiles
    - require:
      - python_win
      - user: mhe
      - dotfiles


bzip2:
  cyg.installed:
    - require:
      - cyg: cygwin_installed

crypt:
  cyg.installed:
    - require:
      - cyg: cygwin_installed

ctags:
  cyg.installed

cygutils:
  cyg.installed

cygutils-extra:
  cyg.installed

cygwin32-gcc-core:
  cyg.installed

cygwin32-gcc-objc:
  cyg.installed

cygwin32-gcc-objc++:
  cyg.installed

fzf-zsh-completion:
  cyg.installed

gcc-core:
  cyg.installed

gcc-objc:
  cyg.installed

gcc-objc++:
  cyg.installed

git:
  cyg.installed

git-completion:
  cyg.installed

gzip:
  cyg.installed

mintty:
  cyg.installed

openssh:
  cyg.installed

openssl:
  cyg.installed

python:
  cyg.installed

python3:
  cyg.installed

rsync:
  cyg.installed

sed:
  cyg.installed

tmux:
  cyg.installed

vim:
  cyg.installed

xclip:
  cyg.installed

xterm:
  cyg.installed

zsh:
  cyg.installed

