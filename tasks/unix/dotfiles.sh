#!/usr/bin/env bash
set -e
mkdir -p /home/mhe/src

pushd /home/mhe/src/dotfiles
git clone https://github.com/Hernrup/dotfiles.git /home/mhe/src/dotfiles || true
python3 install_dot_files.py /home/mhe
popd
