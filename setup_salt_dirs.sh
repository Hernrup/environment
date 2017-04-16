#!/usr/bin/env bash
rm -f /etc/salt/master
ln -s /src/salt/configs/master.conf /etc/salt/master

rm -f /srv/salt
ln -s /src/salt/roots/ /srv/salt

# [ ! -d /srv/pillar ] && ln -s /vagrant/srv/pillar /srv/pillar

