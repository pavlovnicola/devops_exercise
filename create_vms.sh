#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Wrong number of parameters\n"
    echo "The correct syntax is: $0 guest_name"
    exit 1
fi

source vsphere.sh

VM_NAME=$1

# Clean up
cat /dev/null > inventory_temp
cat /dev/null > inventory_exercise

ansible-playbook -i inventory deploy_guest.yml -e guest=$VM_NAME

# Populate the inventory file
echo '[exercise]' > inventory_exercise
cat inventory_temp >> inventory_exercise
