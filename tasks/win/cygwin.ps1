$cache_dir = "c:\cygcache"
$install_file = "$cache_dir\setup-x86_64.exe"

# Create cache dir
iex "md -Force $cache_dir"

# download installer
Invoke-WebRequest -Uri https://cygwin.com/setup-x86_64.exe -OutFile $install_file

# install cygwin + packages
iex "$install_file --local-package-dir $cache_dir --no-desktop --quiet-mode --packages bzip2,crypt,ctags,cygutils,cygutils-extra,cygwin32-gcc-core,cygwin32-gcc-objc,cygwin32-gcc-objc++,fzf-zsh-completion,gcc-core,gcc-objc,gcc-objc++,git,git-completion,gzip,mintty,openssh,openssl,python,python3,rsync,sed,tmux,vim,xclip,xterm,zsh,cmake"

# Install ssh
iex "c:\cygwin64\bin\bash.exe --login -c ssh-host-config --yes"
iex "c:\cygwin64\bin\bash.exe --login -c 'cygrunsrv -S sshd'"

# Install cron
iex "c:\cygwin64\bin\bash.exe --login -c 'cron-config'"

$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\Cygwin.lnk")
$ShortCut.TargetPath="C:\cygwin64\bin\mintty.exe"
$ShortCut.Arguments="-i /Cygwin-Terminal.ico /bin/zsh --login"
$ShortCut.WorkingDirectory = "c:";
$ShortCut.WindowStyle = 1;
$ShortCut.IconLocation = "C:\cygwin64\bin\mintty.exe, 0";
$ShortCut.Description = "Cygwin";
$ShortCut.Save()
