#!/bin/sh

# The MIT License (MIT)
#
# Copyright (c) 2016 Couchbase
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# Script Name: settings.sh
# Author: Cihan Biyikoglu - github:(cihanb)

##couchbase settings
#total nodes in cluster
couchbase_total_nodes=3
#ubuntu 14 image for couchbase server. version can be 4.0 or later
couchbase_download="http://packages.couchbase.com/releases/4.5.0/couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb"
couchbase_binary="couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb"
#TODO: change this username
couchbase_admin_account_name="administrator"
#TODO: change this password
couchbase_admin_account_password="password"
#couchbase services on nodes
couchbase_node_services="data,query,index"
#ram configurations
couchbase_cluster_index_ramsize=1000
couchbase_cluster_ramsize=1000

##azure settings
#TODO: use "azure login -u account" +  "azure account show" to get  account and subscriptionid
azure_account="your_account@your_domain.onmicrosoft.com"
azure_subscription_id="00000000-0000-0000-0000-000000000000"
#TODO: certs for ssh. use ssh-keygen to generate the keys - public and private
vm_auth_cert_public="~/.ssh/id_rsa.pub"
vm_auth_cert_private="~/.ssh_id_rsa"
#prefix to use for the VM name for all nodes 
vm_name_prefix="cb"
#vnet name to keeps azure vms in the same subnet 
vnet_name="cb-vnet1" 
#azure service name for all nodes
service_name="cbase-service"
#region where to provision all nodes
region="'west US'"
#number of data-disks to attach - check the max data-disk allowed on each SKU
data_disk_count=2
#size of the data-disk in GB max is 1023
data_disk_size=1023


##jumpbox settings
#disable jumpbox: set to 1 to diable jumpbox. jumpbox is provisioned for security reasons. you may need to open 8091 and other couchbase server ports to the public internet without it. 
disable_jumpbox=0
#image to use for the jumpbox. using windows server by default
jumpbox_image_name="a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-Datacenter-20160329-en.us-127GB.vhd"
#jumpbox vm sku to use. 
jumpbox_vm_sku="Standard_D2"
#TODO: change this username
jumpbox_vm_admin_account_name="cb_vmadmin"
#TODO: change this password
jumpbox_vm_admin_account_password="couchB@SE123"

##cluster settings
#ubuntu OS image to use on azure
couchbase_vm_image_name="b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-14_04_4-LTS-amd64-server-20160314-en-us-30GB"
#cluster vm sku to use. Standard_D2 can be used as the minimum HW. 
couchbase_vm_sku="Standard_D2"
#couchbase cluster vm admin account name
couchbase_vm_admin_account_name="cb_vmadmin"

#misc settings
#this will enable removing the .ssh/known_hosts file under MacOS. The file gets in the way of reprovisioning the same node names for the cluster.
remove_known_hosts=1
#enable fast delete will supress confirmation on deletes of each VM. do this only if you are certain delete will not harm your existing VMs and you have tried the script multiple times.
enable_fast_delete=0
