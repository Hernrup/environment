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
      }
      salt.version = '2016.11.0'

    end

    c.vm.provision 'shell', inline: 'sudo /vagrant/setup_salt_dirs.sh'
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
      salt.version = '2016.11.0'
    end
  end

  config.vm.define :winbox do |c|
    c.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
    c.vm.host_name = 'winbox'
    c.vm.network "private_network", ip: "192.168.42.12"

    c.vm.provision :salt do |salt|
      salt.minion_config = "salt/configs/winbox.conf"
      salt.minion_key = "salt/keys/minion2.pem"
      salt.minion_pub = "salt/keys/minion2.pub"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
      salt.run_highstate = false
      salt.version = '2016.11.0'
    end
  end

end
