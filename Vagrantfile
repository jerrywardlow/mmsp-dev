# -*- mode: ruby -*-
# vi: set ft=ruby :

nodes = [
    { :hostname => "devweb", :box => "ubuntu/trusty64", :config => "web_config.sh" },
    { :hostname => "devdb",  :box => "ubuntu/trusty64", :config => "db_config.sh" }
]

Vagrant.configure(2) do |config|
    nodes.each do |node|
        config.vm.define node[:hostname] do |nodeconfig|
            nodeconfig.vm.provision "shell", path: node[:config]
            nodeconfig.vm.box = node[:box]
            nodeconfig.vm.hostname = node[:hostname]
            nodeconfig.vm.network "private_network", type: "dhcp"

            nodeconfig.vm.provider "virtualbox" do |v|
                v.name = node[:hostname]
            end
        end
    end
end
