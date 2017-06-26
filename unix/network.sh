#!/usr/bin/env bash
set -e

# Make sure all interfaces except loopback are managed

if [ ! -f /etc/network/interfaces_orig ]; then
    sudo cp /etc/network/interfaces /etc/network/interfaces_orig
fi

sudo sh -c 'echo "
auto lo
iface lo inet loopback
" > /etc/network/interfaces'

if [ ! -f /etc/NetworkManager/conf.d/10-globally-managed-devices.conf_orig ]; then
    sudo mv /etc/NetworkManager/conf.d/10-globally-managed-devices.conf /etc/NetworkManager/conf.d/10-globally-managed-devices.conf_orig
fi

sudo touch /etc/NetworkManager/conf.d/10-globally-managed-devices.conf
