# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bmcgonigle/centos68"
  config.vm.hostname = "jenkins.com"

  config.vm.network "forwarded_port", guest: 8080, host: 8280

   config.vm.provision "shell",
     path: "./provision.sh"
end
