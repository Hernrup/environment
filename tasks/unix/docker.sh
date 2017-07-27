#!/usr/bin/env bash
set -e

echo 'install docker'
sudo apt-get remove docker docker-engine docker.io

sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

# docker
sudo apt install docker-ce -y

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker mhe
