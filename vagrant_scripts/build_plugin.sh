#!/usr/bin/env bash

# we are building the plugin of the github repository
# 

export DEBIAN_FRONTEND=noninteractive

# get the files from the github repository
go get github.com/petems/terraform-provider-extip

# go the directory which has been created
pushd ~/go/src/github.com/petems/terraform-provider-extip

# build the plugin
make build

# create the directory where to store the plugin
mkdir -p /vagrant/terraform.d/plugins/linux_amd64

# copy the plugin to the directory which we are going to use with terraform
cp ~/go/bin/terraform-provider-extip /vagrant/terraform.d/plugins/linux_amd64/

# create the directory where to store the plugin for the use with kitchen
mkdir -p /vagrant/test/fixtures/tf_module/terraform.d/plugins/linux_amd64

# copy the plugin to the directory which we are going to use with terraform
cp ~/go/bin/terraform-provider-extip /vagrant/test/fixtures/tf_module/terraform.d/plugins/linux_amd64/