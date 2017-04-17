# Environment
Documentation for setting up a new environment

## Saltmaster
Install salt

```
curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh -M stable 2016.11
```

Link folders

```
ln -s salt/configs/master.conf /etc/salt/master
ln -s salt/roots/states /srv/salt
ln -s salt/roots/pillars /srv/pillar
ln -s salt/roots/formulas /srv/formulas
```

Add config to `/etc/salt/master`

```
fileserver_backend:
  - roots
  - git
gitfs_remotes:
  - git://github.com/saltstack-formulas/salt-formula.git

```

Restart salt master
```
service salt-master restart
```

Apply configuration
```
salt-call state.sls salt.master
```

## Unix Minion

Install salt
```
curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh stable 2016.11 -A saltmaster.hernrup.se -i <minion name>
```


## Home box
- [dotfiles](https://github.com/Hernrup/dotfiles)

## Work box
- [dotfiles](https://github.com/Hernrup/dotfiles)

## SRV
- Filezilla ftp server
- SyncBackPro backup solution
  - Fetch backup settings from any of the backup locations
- Nginx proxy for internal service name lookup
- CouchPotatoe
- Sonarr
- SABnzbd
