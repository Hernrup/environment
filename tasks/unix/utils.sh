#!/usr/bin/env bash
set -e

echo "install misc apps"
sudo apt install albert nitrogen gnome-terminal vim-gnome silversearcher-ag google-chrome-stable -y

echo "install python stuff"
sudo apt install python3 python3-pip build-essential cmake python-dev python3-dev -y
