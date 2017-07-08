iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install google-chrome-x64 sublimetext3 ccleaner git 7zip procmon procexp sysinternals curl wget windirstat -y
