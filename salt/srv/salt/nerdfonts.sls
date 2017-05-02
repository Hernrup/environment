fonts-folder:
  file.directory:
    - user:  mhe
    - name:  /home/mhe/.local/share/fonts
    - group: mhe
    - mode:  755
    - require:
      - user: mhe

install-nerd-font:
  cmd.run:
    - name: curl -fLo "Sauce Code Pro Nerd Font Complete Mono.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/patched-fonts/SourceCodePro/Regular/complete/Sauce Code Pro Nerd Font Complete Mono.ttf
    - cwd: /home/mhe/.local/share/fonts
    - creates: /home/mhe/.local/share/fonts/Sauce Code Pro Nerd Font Complete Mono.ttf
    - require:
      - fonts-directory
