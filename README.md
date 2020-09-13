# Vagrant Basics

## Basic parts of a Vagrantfile

- config.vm.box
  - Similar to docker image specification
- config.vm.provider - Provider
  - Provider to use for the VM: VirtualBox, VMWare, etc.
- config.vm.network - How the host sees the box
  - Networking, such as forwarding ports to host
- config.vm.sycned_folder - Sync a local folder with a VagrantBox folder
  - Configurations like mounting volumes to the VM
- config.vm.provision - Setup, installations, etc.
  - Installing software, configuration management for the VM OS, etc.

## Basic commands

- `vagrant init`
  - Gives you a Vagrantfile template
- `vagrant up`
  - Equivalent to, say, `docker-compose up -d`
- `vagrant destroy`
  - Equivalent to, say, `docker-compose down`
- `vagrant suspend`
  - Suspends the VM
- `vagrant resume`
  - Resume suspended VM
- `vagrant reload`
  - Reload VM upon config changes
- `vagrant ssh`
  - SSH into the VM
