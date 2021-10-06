# VM Infrastructure as Code
```
Based on Ansible playbooks, you can create new VMs(including all settings) in vCenter in minutes and delete them in seconds.

Add hosts address and names for vms : /vars/host_ip_vars.yml
Change VCenter Configuration based on your requirements: /vars/vm_vars.yml

Install VMs:
./deploy_vm.sh

Remove VMs:
./remove_vm.sh
```
