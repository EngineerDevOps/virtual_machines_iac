#!/bin/bash

#Assignment of variables
project_dir=$(pwd)
SECONDS=0

#Removing Virtual Machines
function remove_vm() {
    ansible-playbook $project_dir/remove_vm.yml
    if [ $? -eq 0 ];
    then
        echo "Remove VMs from vCenter completed successfully!"
    else
        echo "Remove VMs failed!"
        exit 1
    fi
}

function main() {
    remove_vm
    echo "Time spent removing the VMs: $(($SECONDS / 3600))hrs $((($SECONDS / 60) % 60))min $(($SECONDS % 60))sec"
}

main
