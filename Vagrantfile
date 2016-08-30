# Vagrantfile - configure local dev setup for plex
# For a complete doc, see: https://docs.vagrantup.com.

# The "2" in Vagrant.configure sets the version Please don't change it unless you know what you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network "forwarded_port", guest: 32400, host: 8080

  config.push.define "atlas" do |push|
    push.app = "josephholsten/media"
  end

  config.vm.provision "shell", script: "scripts/install-package"
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
