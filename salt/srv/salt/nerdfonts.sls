fonts-folder:
  file.directory:
    - user:  mhe
    - name:  /home/mhe/.local/share/fonts
    - group: mhe
    - mode:  755
    - makedirs: True
    - require:
      - user: mhe

install-nerd-font:
  cmd.run:
    - name: curl -fLo "Sauce Code Pro Nerd Font Complete Mono.otf" "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf?raw=true"
    - cwd: /home/mhe/.local/share/fonts
    - creates: /home/mhe/.local/share/fonts/Sauce Code Pro Nerd Font Complete Mono.ttf
    - require:
      - fonts-folder
