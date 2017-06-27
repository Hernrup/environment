#!/usr/bin/env bash
set -e

echo "install misc apps"
sudo apt install albert nitrogen gnome-terminal vim-gnome silversearcher-ag google-chrome-stable -y

echo "install python stuff"
sudo apt install python3 python3-pip build-essential cmake python-dev python3-dev -y

echo 'install docker'
sudo apt install docker-ce docker-compose -y
sudo usermod -aG docker mhe

echo 'install packer'
sudo apt install packer -y

echo 'install terraform'
mkdir -p ~/.build/terraform
pushd ~/.build/terraform
wget https://releases.hashicorp.com/terraform/0.9.8/terraform_0.9.8_linux_amd64.zip
sudo unzip terraform_0.9.8_linux_amd64.zip -d /usr/local/bin/terraform
popd
