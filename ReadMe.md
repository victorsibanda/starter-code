## Provisioning and Starter Code

In this repository is a VM, vagrant file which uses a Provision file to update and install files.

```ruby

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["development.local"]


config.vm.synced_folder( 'app' , '/app_destination')
config.vm.provision 'shell', path:'environment/provision.sh'

end


```
Code for Provisioning
```

/#!/usr/bin/env bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git
sudo apt-get install nginx -y
sudo apt-get install nodejs -y
sudo apt install build-essential
curl -L https://npmjs.org/install.sh | sudo sh
sudo npm install pm2@latest -g


```

### To test if the vagrant file works I used

'''rake.spec''' In the spec-tests directory.


### Results of Test

All tests passed, one issue I had was finding the right issue of node js, because there is no longer LTS for version 6 so
I edited it to version 8 in the test file.
