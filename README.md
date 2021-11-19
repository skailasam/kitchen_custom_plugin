# Using Kitchen-Terraform with a custom plugin

This repository describes the use of a custom plugin which you will test with Kitchen-Terraform.  

In this example you will use the custom plugin from [https://github.com/petems/terraform-provider-extip](https://github.com/petems/terraform-provider-extip). With this custom plugin you are able to get your external ip address with terraform. 

With Kitchen-Terraform you will test if you actually get to see your external IP address. 


# Prerequisites

Vagrant [See documentation](https://www.vagrantup.com/docs/installation)  
Virtualbox [See documentation](https://www.virtualbox.org/wiki/Downloads)

# Use the custom plugin

- Clone the repository to your local machine
```
git clone https://github.com/munnep/kitchen_custom_plugin.git
```

- Change your directory
```
cd kitchen_custom_plugin
```

- Start a virtual machine with Vagrant
```
vagrant up
```

- ssh into the virtual machine with Vagrant.
```
vagrant ssh
```

- go to the directory ```/vagrant/test/fixtures/tf_module```
```
cd /vagrant/test/fixtures/tf_module
```

- Terraform output
``` 
terraform output
```

You should see the output of your external ip adres
```
external_ip = x.x.x.x
```

- exit out of the vagrant machine
```
exit
```

- Stop the vagrant machine
```
vagrant halt
```

- When you are completely done you can remove it
```
vagrant destroy
```

# Use Kitchen-Terraform verify

- Clone the repository to your local machine
```
git clone https://github.com/munnep/kitchen_custom_plugin.git
```
- Change your directory
```
cd kitchen_custom_plugin
```
- Start a virtual machine with Vagrant
```
vagrant up
```
- ssh into the virtual machine with Vagrant.
```
vagrant ssh
```
- go to the directory ```/vagrant```
```
cd /vagrant
```
- Run a kitchen verify test. This will do 3 tests
    - check that the external provider is in the correct location
    - check that the terraform state file is correctly created
    - Check that you have an external ip address in your output that matches an ip address format 
```
bundle exec kitchen verify
```
- See the result which should verify the 3 tests
```
...
  ✔  file_check_external_provider: File ./test/fixtures/tf_module/terraform.d/plugins/linux_amd64/terraform-provider-extip
     ✔  File ./test/fixtures/tf_module/terraform.d/plugins/linux_amd64/terraform-provider-extip is expected to exist
  ✔  state_file: 0.11.15
     ✔  0.11.15 is expected to match /\d+\.\d+\.\d+/
  ✔  external_ip: 163.x.x.x
     ✔  163.x.x.x is expected to match /\d+\.\d+\.\d+\.\d+/


Profile Summary: 3 successful controls, 0 control failures, 0 controls skipped
...
```
- Destroy the infrastructure
```
bundle exec kitchen destroy
```
- exit out of the vagrant machine
```
exit
```
- Stop the vagrant machine
```
vagrant halt
```
- When you are completely done you can remove it
```
vagrant destroy
```
## TODO

## DONE
- [x] create a vagrant file 
- [x] install terraform version 0.11
- [x] install gcc
- [x] install go version 1.10
- [x] install jq
- [x] build the custom plugin
- [x] terraform configuration 
- [x] install ruby and bundle
- [x] setup kitchen
- [x] run kitchen