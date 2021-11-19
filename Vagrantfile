# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.hostname = "kitchen-custom"
 
  config.vm.provision "shell", path: "vagrant_scripts/install_terraform.sh",
  env: { "VERSION" => "0.11.15" }

  config.vm.provision "shell", path: "vagrant_scripts/install_gcc.sh"

  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024*2
    v.cpus = 2
  end

end
