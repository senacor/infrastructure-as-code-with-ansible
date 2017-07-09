# Exercise 1: Install Java to the environment

## Description: 

In this exercise we get in touch with Ansible. For this we provide our Vagrant VM with the first peace of software. 
As a base for our spring boot application we need an installation of Java on the VMs.

## Task:

Please create a playbook to install an Java to our vagrant vm. Currently we just use the Ubuntu default java package.

To do that provide the following steps:

1. Create a inventory file with a group "all" which contains the connection data to the vagrant vm.
2. Create a playbook e.g. install_java.yml which install the java package to all servers in the inventory.
3. Run the playbook by using the created hostfile like:

     
     ansible-playbook install_java.yml -i hosts 

**Hint**: The command to instal the nginx at ubunto is:

     sudo apt-get update
     sudo apt-get install default-jre


## Test

After running the playbook you should be able to call the default nginx page on your local mashing with. 

     java -version
     
      
## Optional

You can run ansible modules directly in the console, with the ad-hoc mode. Try as an example:

     ansible web -i hosts -m ping

Try to call "java -version" with this ansible console command.

