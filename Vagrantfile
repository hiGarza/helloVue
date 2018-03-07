Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "helloVue"
    vb.memory = "512"
  end

  config.vm.synced_folder "app/", "/home/vagrant/app"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision :shell, path: "./provision/bootstrap.sh"
end