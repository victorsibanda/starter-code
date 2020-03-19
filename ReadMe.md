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

#!/bin/bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git
sudo apt-get install nginx -y
curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get install -y nodejs
sudo apt install build-essential
curl -L https://npmjs.org/install.sh | sudo sh
sudo npm install pm2@latest -g
```

### To run the VM

go to location of your starter-code after completing tasks above use commands.

- `vagrant up` - To initialise and start VM
- `vagrant ssh` - To use VM
- In the VM use `exit` - To leave the VM
- `vagrant destroy` - To stop the VM
- `vagrant reload` - To apply changes in the files without having to download the VM again.

### To test if the vagrant file works I used


`cd environment`
`cd spec-tests`
`rake.spec` In the spec-tests directory.


### Results of Test

All tests passed, one issue I had was finding the right issue of node js, because there is no longer LTS for version 6 so
I edited it to version 8 in the test file.

![Screenshot 2020-03-18 at 12 15 13](https://user-images.githubusercontent.com/60632288/76960051-9e09ed80-6912-11ea-8e0a-e00cf9ede1a2.png)
