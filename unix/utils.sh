#!/usr/bin/env bash
set -e

# Needed for albert launcher
sudo add-apt-repository ppa:nilarimogard/webupd8 -y

# Needed for Vim8 with good compile flags
sudo add-apt-repository ppa:pi-rho/dev -y

sudo apt install albert nitrogen gnome-terminal vim-gnome silversearcher-ag

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >>
/etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# packer
mkdir -p ~/.build/packer
pushd ~/.build/packer
git clone https://github.com/mitchellh/packer.git
cd packer
make bootstrap
make dev
popd

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
sudo apt install docker-ce docker-compose -y

# terraform
wget https://releases.hashicorp.com/terraform/0.9.8/terraform_0.9.8_linux_amd64.zip
unzip terraform_0.9.8_linux_amd64.zip -d /usr/local/bin/terraform

# Tmux 2.4
sudo apt install libevent-dev libncurses-dev -y

if [[ ! -d ~/.builds/tmux ]]; then
    git clone --branch 2.4 https://github.com/tmux/tmux.git ~/.builds/tmux
else
    pushd ~/.builds/tmux
    git pull
    popd
fi

pushd ~/.builds/tmux
sh autogen.sh
./configure && make
sudo make install
popd
