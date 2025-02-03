Vagrant.configure("2") do |config|
  config.vm.define "jenkins" do |j|
    j.vm.box = "ubuntu/jammy64"
    j.vm.hostname = "jenkins"
    j.vm.network "private_network", ip: "192.168.56.223"
    j.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 4
    j.vm.provision "shell", path: "jenkins.sh"
    end
  end
end
