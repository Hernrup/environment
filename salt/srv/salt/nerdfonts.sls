fonts-folder:
  file.directory:
    - name:  /usr/share/fonts

install-nerd-font:
  cmd.run:
    - name: curl -fLo "Ubuntu Mono derivative Powerline Nerd Font Complete Mono.ttf" "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20derivative%20Powerline%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && sudo fc-cache -f -v
    - cwd: /usr/share/fonts
    - creates: /usr/share/fonts/Ubuntu Mono derivative Powerline Nerd Font Complete Mono.ttf
    - require:
      - fonts-folder
