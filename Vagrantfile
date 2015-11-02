# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.provision "shell", path: "dv_config.sh"
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "devbox"
    config.vm.network "private_network", type: "dhcp"

    config.vm.provider "virtualbox" do |v|
        v.name = "devbox"
    end
end
