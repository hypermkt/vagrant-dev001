# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :develop do |develop|
    develop.vm.box = "CentOS-6.4-x86_64"
    develop.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v0.1.0/centos64-x86_64-20131030.box"
    develop.vm.synced_folder "synced_folder", "/var/www/html"
    develop.vm.network "private_network", ip: "192.168.33.10"

    develop .vm.provision "ansible" do |ansible|
      ansible.playbook = "develop_servers.yml"
      ansible.inventory_path = "inventory/development"
      ansible.limit = 'all'
    end
  end
end
