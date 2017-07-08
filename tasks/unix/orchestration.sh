#!/usr/bin/env bash
set -e

echo 'install packer tools'
sudo apt install packer vagrant -y

#terraform
mkdir -p ~/.build/terraform
pushd ~/.build/terraform
wget https://releases.hashicorp.com/terraform/0.9.8/terraform_0.9.8_linux_amd64.zip
sudo unzip terraform_0.9.8_linux_amd64.zip -d /usr/local/bin/terraform
popd
