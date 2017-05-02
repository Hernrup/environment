# -*- mode: ruby -*-
# vi: set ft=ruby :
#
#


# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :saltmaster, autostart: true do |c|
    c.vm.box = "ubuntu/xenial64"
    c.vm.hostname = 'saltmaster-dev'

    c.vm.network "private_network", ip: "192.168.42.10"
    c.vm.network 'forwarded_port', guest: 4505, host: 4505
    c.vm.network 'forwarded_port', guest: 4506, host: 4506

    c.ssh.forward_agent = true

    c.vm.provider "virtualbox" do |vb|
      # vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
    end

    c.vm.synced_folder "salt", "/src/salt"

    # c.vm.network "forwarded_port", guest: 80, host: 8001
    # c.vm.network "forwarded_port", guest: 8080, host: 8002

    c.vm.provision :salt do |salt|

      salt.minion_config = "salt/configs/master_minion.conf"
      salt.colorize = true
      salt.verbose = true
      salt.log_level = "error"
      salt.run_highstate = false
      salt.install_master = true
      salt.no_minion = false
      salt.bootstrap_options = '-P'  # Allow install of python packages via pip.
      salt.master_key = "salt/keys/master_minion.pem"
      salt.master_pub = "salt/keys/master_minion.pub"
      salt.minion_key = "salt/keys/master_minion.pem"
      salt.minion_pub = "salt/keys/master_minion.pub"
      salt.seed_master = {
        "saltmaster" => "salt/keys/master_minion.pub",
        "mh-wsl" => "salt/keys/mh_wsl.pub",
        "mh-unix-ws" => "salt/keys/mh_unix_ws.pub",
        "mh" => "salt/keys/mh.pub",
      }
      salt.install_type = "git"
      salt.install_args = "v2016.11.3"

    end

    c.vm.provision 'shell', inline: 'sudo /vagrant/setup_salt_dirs.sh'
  end

  config.vm.define :mh_unix_ws do |minion_config|
    minion_config.vm.box = "ubuntu/xenial64"
    minion_config.vm.host_name = 'mh-unix-ws'
    minion_config.vm.network "private_network", ip: "192.168.42.13"

    minion_config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--monitorcount", "2"]
      vb.customize ["modifyvm", :id, "--memory", "8000"]
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
      vb.customize ["modifyvm", :id, "--cpus", "4"]
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    end

    config.vm.provision "shell", inline: "sudo apt-get update"
    config.vm.provision "shell", inline: "sudo apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"
    config.vm.provision "shell", inline: "sudo VBoxClient --clipboard && 
        sudo VBoxClient --draganddrop && 
        sudo VBoxClient --display && 
        sudo VBoxClient --checkhostversion && 
        sudo VBoxClient --seamless"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "salt/configs/mh_unix_ws.conf"
      salt.minion_key = "salt/keys/mh_unix_ws.pem"
      salt.minion_pub = "salt/keys/mh_unix_ws.pub"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
      salt.run_highstate = false
      salt.install_type = "git"
      salt.install_args = "v2016.11.3"
    end
  end


  config.vm.define :mh_wsl do |minion_config|
    minion_config.vm.box = "ubuntu/trusty64"
    minion_config.vm.host_name = 'mh-wsl'
    minion_config.vm.network "private_network", ip: "192.168.42.11"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "salt/configs/mh_wsl.conf"
      salt.minion_key = "salt/keys/mh_wsl.pem"
      salt.minion_pub = "salt/keys/mh_wsl.pub"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
      salt.run_highstate = false
      salt.install_type = "git"
      salt.install_args = "v2016.11.3"
    end
  end

  config.vm.define :mh do |c|
    c.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
    c.vm.host_name = 'mh'
    c.vm.network "private_network", ip: "192.168.42.12"

    c.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "60"]
    end

    c.vm.provision :salt do |salt|
      salt.minion_config = "salt/configs/mh.conf"
      salt.minion_key = "salt/keys/mh.pem"
      salt.minion_pub = "salt/keys/mh.pub"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      # salt.bootstrap_options = "-P -c /tmp"
      salt.run_highstate = false
      # salt.install_type = "git"
      # salt.install_args = "v2016.11.0"
      salt.version = "2016.11.3"
    end
  end

end
