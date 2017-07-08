#!/usr/bin/env bash
set -e

echo 'install docker'
sudo apt install docker-ce docker-compose -y
sudo usermod -aG docker mhe
