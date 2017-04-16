# Environment
Documentation for setting up a new environment

## Installation

### Saltmaster
Install salt
```
curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
# Install master
sudo sh bootstrap-salt.sh -M -N git v2016.11.0
# Install master-minion
sudo sh bootstrap-salt.sh git v2016.11.0
```

Add config
```
cat /etc/salt/master

fileserver_backend:
  - roots
  - git
gitfs_remotes:
  - git://github.com/saltstack-formulas/salt-formula.git

```

```
cat /etc/salt/minion

master: localhost
```

Apply saltmater configuration
```
sudo salt 'saltmaster' state.apply
```

### Minion

```
curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
# Install master-minion
sudo sh bootstrap-salt.sh git v2016.11.0
```

```
cat /etc/salt/minion

master: saltmaster
id: my-box
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


## WSL setup


### SSHd
- Edit port
- enable empty password

### Install vim 8
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim-nox


### Base16 shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


### Misc
- zsh as default

### YCMD
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
