if !Vagrant.has_plugin?('vagrant-faster') 
	puts "Zainstaluj plugin vagrant-faster. Wpisz: vagrant plugin install vagrant-faster"
	exit
end
if !Vagrant.has_plugin?('vagrant-vbguest') 
	puts "Zainstaluj plugin vagrant-vbguest. Wpisz: vagrant plugin install vagrant-vbguest"
	exit
end
if !Vagrant.has_plugin?('vagrant-winnfsd') 
	puts "Zainstaluj plugin vagrant-winnfsd. Wpisz: vagrant plugin install vagrant-winnfsd"
	exit
end
Vagrant.configure("2") do |config|
	config.vm.box = "debian/jessie64"
	config.vm.network "private_network", ip: "192.168.56.10"
	config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "./../", "/var/www/" ,	type: "nfs"#, mount_options: ['rw','tcp','nolock']
	config.vm.provider "virtualbox" do |v|
    	v.name = "Yetiforce Vagrant"
    	v.cpus = 2
		v.memory = 4096
		v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
		v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
		v.customize ["modifyvm", :id, "--nictype1", "virtio"]
    end
    config.vm.provision "shell" do |s|
    	s.path = "provision/bootstrap.sh"
    end
	config.vm.provision :shell, path: "provision/other.sh", run: 'always'
end