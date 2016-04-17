#!/bin/sh
#azure settings
#account - "azure account show"
account="cb@cihangirbhotmail.onmicrosoft.com"
#vnet name created for the cluster
vnet_name="cb_private1"
vm_name_prefix="cbase"
total_nodes=8

#warning
echo "WARNING, This will wipe out your cluster and delete all your data. [y/n]"
read yes_no

if [ $yes_no == 'y' ]
then
    #login
    azure login -u $account

    #set mode to asm
    azure config mode asm

    #loop to clean up all nodes.
    for ((i=1; i<=$total_nodes; i++))
    do
	    echo "DELETING INSTANCE: $i"
	    azure vm delete $vm_name_prefix-$i -q
    done

    #delete the vnet
    azure network vnet delete $vnet_name -q

else
    echo "CANCELLED"

fi