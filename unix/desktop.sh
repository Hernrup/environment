#!/usr/bin/env bash
set -e

sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config
sudo apt install ubuntu-gnome-desktop

# Needed for libxcb-xrm-dev, needed by i3wm
# sudo add-apt-repository ppa:aguignard/ppa -y

# Needed for libxcb-xrm-dev, needed by i3wm
# sudo add-apt-repository ppa:aguignard/ppa -y

# usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring_i3.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
# sudo apt install ./keyring_i3.deb
sudo /bin/sh -c 'echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=)
universe" >> /etc/apt/sources.list.d/sur5r-i3.list'
sudo apt update
sudo apt install i3

# polybar
# sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev -y
#
# if [[ ! -d ~/.builds/polybar ]]; then
#     git clone --branch 3.0.5 --recursive https://github.com/jaagr/polybar ~/.builds/polybar
# else
#     pushd ~/.builds/polybar
#     git pull
#     popd
# fi

# if [[ -d ~/polybar/build ]]; then
#     rm -rf ~/polybar/build
# fi

# mkdir -p ~/.builds/polybar/build
# pushd ~/.builds/polybar/build
# cmake ..
# sudo make install
#
