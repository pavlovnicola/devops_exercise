# devops_exercise

In this exercise, you are able to achieve the following:

1. Provisioning a VM (only VMWare support is currently available)
2. Create an (ansible) inventory file of the provisioned VM
3. Install Docker Daemon on the provisioned VM
4. Deploy an Nginx web app (static html)

Requirements:
- VMware
- DHCP Server installed and accessible from the VM that will be created from the template
- Deployer machine (CentOS 7 preferrable)
- CentOS 7 template
- SSH key between deployer and template
- Access to internet
- pip 8 and up
- ansible 2.1.0.0 and up
- python 2.7

1. VM Provisioning

    In order to provision a VM against VMware you need first to fill in the VMWare details               (username, password, ...) in the "vsphere.sh"

    After that you can run the bash script:

    `$ /path/to/create_vms.sh guest-name`

2. The above script creates the inventory as well.

3. In order to install the docker daemon, run the folloing playbook:

    `$ ansible-playbook -i path/to/inventory_exercise install-docker.yml`

4. In order to deploy Nginx webapp, run the following ansible playbook:

    `$ ansible-playbook -i path/to/inventory_exercise deploy_static_webpage.yml`


You can open a browser now and put in the IP Address of the VM created!!
