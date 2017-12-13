#!/usr/bin/env bash
set -e

sudo apt-get purge skypeforlinux && sudo apt-get autoremove
sudo apt-get install apt-transport-https -y
sudo apt-get install curl -y
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skype-stable.list
sudo apt-get update
sudo apt-get install skypeforlinux -y
