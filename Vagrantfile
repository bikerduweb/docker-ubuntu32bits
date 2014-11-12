VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty32"
  config.vm.box_check_update = true
  config.vm.provision "file", source: "~/.dockercfg", destination: "/tmp/.dockercfg"
  config.vm.provision "file", source: "./docker_username", destination: "/tmp/docker_username"
  config.vm.provision "shell", path: "build_image.sh", privileged: true
end