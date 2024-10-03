Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.box_version = "20241002.0.0"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = "1"
  end
  config.vm.provision "shell", path: "docker.sh"

  config.vm.define "mgr1" do |mgr1|
    mgr1.vm.hostname = "mgr1"
    mgr1.vm.network "private_network", ip: "192.168.56.81"
  end
  config.vm.define "mgr2" do |mgr2|
    mgr2.vm.hostname = "mgr2"
    mgr2.vm.network "private_network", ip: "192.168.56.82"
  end
  config.vm.define "mgr3" do |mgr3|
    mgr3.vm.hostname = "mgr3"
    mgr3.vm.network "private_network", ip: "192.168.56.83"
  end
  config.vm.define "work1" do |work1|
    work1.vm.hostname = "work1"
    work1.vm.network "private_network", ip: "192.168.56.84"
  end
  config.vm.define "work2" do |work2|
    work2.vm.hostname = "work2"
    work2.vm.network "private_network", ip: "192.168.56.85"
  end
end
