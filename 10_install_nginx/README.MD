# Exercise 1: Get in touch and install nginx

## Description: 

In this exercise we get in touch with Ansible. For this we provide our Vagrant VM with the first peace of software. 


## Task:

Please create a playbook to install an nginx webserver to our vagrant vm. Currently we just need an empty installation without
further configuration

To do that provide the following steps:

1. Create a inventory file with a group "web" which contsin the connection data to the vagrant vm.
2. Create a playbook e.g. install_nginx.yml which install the nginx package to all servers in the web-group.
3. Run the playbook by using the created hostfile like:

     
     ansible-playbook install_nginx.yml -i hosts 

**Hint**: The command to instal the nginx at ubunto is:

     sudo apt-get update
     sudo apt-get install nginx


## Test

After running the playbook you should be able to call the default nginx page on your local mashing with. 

     http://localhost:8080/
     
or in the console with:

     curl http://dockerhost:8080
      
## Optional

You can run ansible modules directly in the console, with the ad-hoc mode. Try as an example:

     ansible web -i hosts -m ping

Try to stop and start the nginx service with this console command.

