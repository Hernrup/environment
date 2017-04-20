#!/usr/bin/env bash
rm -f /etc/salt/master
ln -s /src/salt/configs/master.conf /etc/salt/master

rm -f /srv/salt
ln -s /src/salt/srv/salt /srv/salt

rm -f /srv/pillar
ln -s /src/salt/srv/pillars /srv/pillar

rm -f /srv/formulas
ln -s /src/salt/srv/formulas /srv/formulas

