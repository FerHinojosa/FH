require 'vagrant-openstack-provider'

Vagrant.configure('2') do |config |   
    
    config.ssh.username = 'ubuntu'
    config.ssh.private_key_path ="C:/Users/Devops/Desktop/DevOps/Instalaciones/linux.pem.txt"
    config.vm.provision "docker"
    config.vm.provider :openstack do |os, override |
        os.identity_api_version = '3'
        os.openstack_auth_url = 'http://10.28.3.240:5000/v3'
        os.domain_name = 'jalasoft'
        os.username = 'fernando hinojosa'
        os.password = ''
        os.tenant_name = '51691ab150af40c8a7be5ee425989549   '
        os.project_name  = 'jalasoft_devops101'
        os.keypair_name   = 'Linux'
        os.image = 'ubuntu-16.04-amd64-server_17052018'
        os.flavor = 'f1.desktop.large'
        os.server_name = '<Ubuntu-FH02-vm01>'
        override.vm.synced_folder '.', '/vagrant', disabled: true
        
   end
en
