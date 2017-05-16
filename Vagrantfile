$private_ip_prefix = '192.168.50'

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"

  config.vm.define "jenkins_box" do |j|
    j.vm.network "private_network", ip: "#{$private_ip_prefix}.6"

    j.vm.provider "vmware_workstation" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end

    j.vm.provision "shell", path: "docker-provision-jenkins.sh"
  end
end
