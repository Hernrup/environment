#!/usr/bin/env bash
set -e

. ./tasks/unix/ppa.sh
. ./tasks/unix/core.sh
. ./tasks/unix/shell.sh
. ./tasks/unix/fonts.sh
sudo apt install python3 python3-pip build-essential cmake python-dev python3-dev -y
. ./tasks/unix/docker.sh
. ./tasks/unix/smb.sh
. ./tasks/unix/dotfiles.sh
