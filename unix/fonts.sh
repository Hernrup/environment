#!/usr/bin/env bash
set -e

mkdir -p ~/.local/share/fonts
pushd ~/.local/share/fonts

curl -fLo "DejaVu Sans Mono Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true

curl -fLo "Ubuntu Mono derivative Powerline Nerd Font Complete Mono.ttf" "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20derivative%20Powerline%20Nerd%20Font%20Complete%20Mono.ttf?raw=true"

popd

sudo fc-cache -f -v
