# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false

  config.vm.define "docker" do |docker|
    docker.vm.network "forwarded_port", guest: 80, host: 8079
    docker.vm.network "forwarded_port", guest: 8081, host: 8081
    docker.vm.network "forwarded_port", guest: 8082, host: 8082
    docker.vm.network "forwarded_port", guest: 3306, host: 3306
    docker.vm.network "forwarded_port", guest: 6080, host: 6080
    docker.vm.network "forwarded_port", guest: 8080, host: 8080
    docker.vm.network "private_network", ip: "85.0.0.10"
    docker.vm.hostname = "docker"
    docker.vm.provider "virtualbox" do |vb|
      vb.cpus = 2
      vb.memory = "2048"
    end
    docker.ssh.forward_agent = true
    docker.vm.synced_folder "./", "/home/vagrant/project"
    docker.vm.provision "shell" do |s|
      s.path = "./docker/docker.sh"
    end
  end
end
