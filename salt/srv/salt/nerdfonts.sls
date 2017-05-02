fonts-folder:
  file.directory:
    - name:  /usr/share/fonts

install-nerd-font:
  cmd.run:
    - name: curl -fLo "Sauce Code Pro Nerd Font Complete Mono.ttf" "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf?raw=true" && sudo fc-cache -f -v
    - cwd: /usr/share/fonts
    - creates: /usr/share/fonts/Sauce Code Pro Nerd Font Complete Mono.ttf
    - require:
      - fonts-folder
