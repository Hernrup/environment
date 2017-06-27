# Environment
Documentation for setting up a new environment

## Generic Unix Dev Enviornmen

Install
```
./setup_unix_dev.sh
```

## MH
```
Salt-Minion-2016.11.3-AMD64-Setup.exe /S /master saltmaster.hernrup.se /minion-name=mh
```

### Install nerdfonts
```
http://nerdfonts.com/
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
