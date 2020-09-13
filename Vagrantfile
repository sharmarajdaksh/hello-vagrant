# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # Box Config
  config.vm.box = "ubuntu/bionic64"

  # Provider Config
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 4
  end
  
  # Network Config
  ## Forward VM port 80 to port 8080 on localhost
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  ## Forward VM port 80 to port 8080 on host
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  ## Run VM on private IP
  config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # Volume Mounts
  config.vm.synced_folder "./var-www-html", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"]

  # Provisioning via a script
  config.vm.provision "shell", path: "bootstrap.sh"

end
