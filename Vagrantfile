# -*- mode: ruby -*-
# vi: set ft=ruby :

# Configuration from: http://misheska.com/blog/2013/06/16/getting-started-writing-chef-cookbooks-the-berkshelf-way/

Vagrant.configure("2") do |config|
  config.vm.hostname = "reviewitician-berkshelf"
  config.vm.box = "ubuntu1204"
  config.vm.box_url = "https://dl.dropboxusercontent.com/s/abqb8at2bohckdk/ubuntu1204.box?dl=1&token_hash=AAGHg3KFhlTytuG2A0twWKKSHvgRERMjf9BrAFc0AeQ4Xw"
  config.omnibus.chef_version = :latest
  config.vm.network :private_network, ip: "33.33.33.10"
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      ocd_rackbox: {
        sshd_config: {
          Port: 22
        }
      }
    }
    chef.run_list = [
      "recipe[reviewitician::default]"
    ]
  end
end
