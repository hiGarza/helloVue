Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "helloVagrant"
    vb.memory = "512"
  end

  config.vm.synced_folder "app/", "app/"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "public_network", type: "dhcp"

  # config.vm.provision :shell, path: "./provision/bootstrap.sh"
end