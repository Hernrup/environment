#!/usr/bin/env bash
set -e
sudo apt update
sudo apt install git tmux htop curl zip unzip build-essential libssl-dev g++ zsh openssl cmake -y

# Fetch tmux plugin manager
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
