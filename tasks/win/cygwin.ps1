$cache_dir = "c:\cygcache"
$install_file = "$cache_dir\setup-x86_64.exe"

# Create cache dir
iex "md -Force $cache_dir"

# download installer
#Invoke-WebRequest -Uri https://cygwin.com/setup-x86_64.exe -OutFile $install_file

# install cygwin + packages
#iex "$install_file --local-package-dir $cache_dir --no-desktop --quiet-mode --packages bzip2 crypt ctags cygutils cygutils-extra cygwin32-gcc-core cygwin32-gcc-objc cygwin32-gcc-objc++ fzf-zsh-completion gcc-core gcc-objc gcc-objc++ git git-completion gzip mintty openssh openssl python python3 rsync sed tmux vim xclip xterm zsh"

bash.exe ssh-host-config --yes -u "root" -c "binmode ntsec tty"
cygrunsrv -S sshd

#C:\tools\cygwin\bin\mintty.exe -i /Cygwin-Terminal.ico /bin/zsh --login
#lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
#install apt-cyg /bin
