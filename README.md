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
ln -s /src/salt/srv/salt /srv/salt
ln -s /src/salt/srv/pillars /srv/pillar
ln -s /src/salt/srv/formulas /srv/formulas
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

## Generic Unix Minion

Install salt
```
curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh stable 2016.11 -A saltmaster.hernrup.se -i <minion name>
```


## MH
```
Salt-Minion-2016.11.3-AMD64-Setup.exe /S /master saltmaster.hernrup.se /minion-name=mh
```

### Software requiring manual Installations
- chocholate
- q-dir
- sqlserver
- visual studio
- redgate
- vista switcher
- sourcecode pro and powerline fonts
- balsamic

### Chocholate install
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco install google-chrome-x64 mingw conemu kdiff3 wireshark fiddler4 jre8 sublimetext3 ccleaner staruml filezilla putty git 7zip nodejs.install chocolateygui dotnet4.5 procmon procexp sysinternals python virtualbox curl wget baretail silverlight windirstat sourcetree cygwin

### Cygwin run command for zsh in tty
C:\tools\cygwin\bin\mintty.exe -i /Cygwin-Terminal.ico /bin/zsh --login

### install apt-cyg
lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
install apt-cyg /bin

### Remove bash completion if using zsh as it couses lag.
mv /etc/bash_completion.d -v /etc/bash_completion.d_bak

### Install grip for markdown
`pip install grip`

## Install pypy for faster prompt

### Install dotfiles in cygwin
- [dotfiles](https://github.com/Hernrup/dotfiles)

## Work box
- [dotfiles](https://github.com/Hernrup/dotfiles)

## SRV
Install:

- Filezilla ftp server
- SyncBackPro backup solution
  - Fetch backup settings from any of the backup locations
- Nginx proxy for internal service name lookup
- CouchPotatoe
- Sonarr
- SABnzbd
