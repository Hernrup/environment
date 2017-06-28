# -*- mode: ruby -*-
# vi: set ft=ruby :
#
#
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :unix, autostart: false do |c|
    c.vm.box = "ubuntu/zesty64"
    c.vm.hostname = 'unix-dev'

    c.vm.network "private_network", ip: "192.168.42.10"
    # c.vm.network "forwarded_port", guest: 80, host: 8001

    c.ssh.forward_agent = true

    c.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    end

    c.vm.synced_folder ".", "/src"

    c.vm.provision 'shell', inline: '/bin/bash -c "cd /src; ./setup_unix_dev.sh"'
  end

  config.vm.define :win, autostart: false do |c|
    c.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
    c.vm.host_name = 'win-dev'
    c.vm.network "private_network", ip: "192.168.42.12"

    c.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    end

    c.vm.synced_folder ".", "/src"

    c.vm.provision 'shell', inline: 'cd c:/src; ./setup_win_dev.ps'
  end

end
