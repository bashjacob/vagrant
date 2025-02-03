Vagrant.configure("2") do |config|
  config.vm.define "docker" do |d|
    d.vm.box = "ubuntu/jammy64"
    d.vm.hostname = "docker"
    d.vm.network "private_network", ip: "192.168.56.224"
    d.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 4
    d.vm.provision "shell", path: "docker.sh"
    end
  end
end
