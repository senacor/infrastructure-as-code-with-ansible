# Exercise 3: Install nginx and forward to the application

## Description: 

At least we now want to access our application over an nginx loadbalancer. 


## Task:

Please create a playbook to install an nginx webserver to our vagrant vm. 
The nginx should forward port 80 with context /petclinic  to http://127.0.0.1:8080


To do that provide the following steps:

1. Create a inventory file with a group "web" which contsin the connection data to the vagrant vm.
2. Create a playbook e.g. install_nginx.yml which install the nginx package to all servers in the web-group.
3. Add a service config file to forward to the petclinic
4. Add a handler to restart the nginx at the end of the playbook. 
5. Add a check if the endpoint is reachable

     
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

