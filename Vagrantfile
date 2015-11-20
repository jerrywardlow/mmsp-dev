# -*- mode: ruby -*-
# vi: set ft=ruby :

nodes = [
    { :hostname => "devweb", :box => "ubuntu/trusty64", :config => "web_config.sh", :ip =>  "172.66.166.101"},
    { :hostname => "devdb",  :box => "ubuntu/trusty64", :config => "db_config.sh", :ip =>  "172.66.166.102"}
]

Vagrant.configure(2) do |config|
    config.hostmanager.enabled = true
    nodes.each do |node|
        config.vm.define node[:hostname] do |nodeconfig|
            nodeconfig.vm.provision :shell, path: node[:config]
            nodeconfig.vm.box = node[:box]
            nodeconfig.vm.hostname = node[:hostname]
            nodeconfig.vm.network :private_network, ip: node[:ip]

            nodeconfig.vm.provider :virtualbox do |v|
                v.name = node[:hostname]
            end
        end
    end
end
