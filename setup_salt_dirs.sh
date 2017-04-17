#!/usr/bin/env bash
rm -f /etc/salt/master
ln -s /src/salt/configs/master.conf /etc/salt/master

rm -f /srv/salt
ln -s /src/salt/roots/states /srv/salt

rm -f /srv/pillar
ln -s /src/salt/roots/pillars /srv/pillar

rm -f /srv/formulas
ln -s /src/salt/roots/formulas /srv/formulas

