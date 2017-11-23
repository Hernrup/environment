#!/usr/bin/env bash
set -e

sudo apt install zsh
git clone https://github.com/chriskempson/base16-shell.git /home/mhe/.config/base16-shell || true

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.build/fzf || true
~/.build/fzf/install --no-key-bindings --64 --completion --no-update-rc
