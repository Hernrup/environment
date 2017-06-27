#!/usr/bin/env bash
set -e

# Needed for albert launcher
sudo add-apt-repository ppa:nilarimogard/webupd8 -y

# Needed for Vim8 with good compile flags
sudo add-apt-repository ppa:pi-rho/dev -y

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo add-apt-repository \
    "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) edge"

# Use 16.04 release untill 17.04 is avaliable
# sudo add-apt-repository \
#        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#        xenial stable"

sudo apt update
