Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  
  config.vm.define "controllnode" do |controllnode|
    controllnode.vm.box = "ubuntu/jammy64"
    controllnode.vm.hostname = "controll-node"
    controllnode.vm.synced_folder "$(dirname $0)/shared", "/shared"#, disabled: true
    controllnode.vm.network "private_network", ip: "192.168.56.30"
    controllnode.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    controllnode.vm.provision "shell", path: "setup.sh"
  end
  
  config.vm.define "node01" do |node01|
    node01.vm.box = "eurolinux-vagrant/centos-stream-9"
    node01.vm.hostname = "node01"
    node01.vm.synced_folder "$(dirname $0)/shared", "/shared"
    node01.vm.network "private_network", ip: "192.168.56.31"
    node01.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    node01.vm.provision "shell", path: "nodesetup.sh"
  end
  
  config.vm.define "node02" do |node02|
    node02.vm.box = "eurolinux-vagrant/centos-stream-9"
    node02.vm.hostname = "node02"
    node02.vm.synced_folder "$(dirname $0)/shared", "/shared"
    node02.vm.network "private_network", ip: "192.168.56.32"
    node02.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    node02.vm.provision "shell", path: "nodesetup.sh"
  end

  config.vm.define "db" do |db|
    db.vm.box = "eurolinux-vagrant/centos-stream-9"
    db.vm.hostname = "db"
    db.vm.synced_folder "$(dirname $0)/shared", "/shared"
    db.vm.network "private_network", ip: "192.168.56.33"
    db.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    db.vm.provision "shell", path: "nodesetup.sh"
  end
end
