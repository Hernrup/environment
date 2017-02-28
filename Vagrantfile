# -*- mode: ruby -*-
# vi: set ft=ruby :
#
#

require 'win32ole'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.42.10"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../../vbnfs", "/vbnfs"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
  end

  # Masterless salt configuration
  config.vm.synced_folder "salt/roots/states", "/srv/salt/states"
  config.vm.synced_folder "salt/roots/pillars", "/srv/salt/pillars"

  # Mount all drives
  file_system = WIN32OLE.new("Scripting.FileSystemObject")
  drives = file_system.Drives
  drives.each do |drive|
      # config.vm.synced_folder "#{drive.Path}", "/mnt/#{drive.DriveLetter.downcase}"
      config.vm.synced_folder "C:", "/mnt/#{drive.DriveLetter.downcase}"
  end

  config.vm.network "forwarded_port", guest: 80, host: 8001
  config.vm.network "forwarded_port", guest: 8080, host: 8002

  # Use all the defaults:
  config.vm.provision :salt do |salt|

    salt.minion_config = "salt/configs/minion.conf"
    salt.colorize = true
    salt.verbose = true
    salt.log_level = "error"
    salt.run_highstate = true

  end
end
