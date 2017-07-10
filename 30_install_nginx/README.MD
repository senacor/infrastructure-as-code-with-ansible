# Exercise 3: Install nginx and forward to the application

## Description: 

At least we now want to access our application over an nginx loadbalancer. 


## Task:

Please create a playbook to install an nginx webserver to our vagrant vm. 
The nginx should forward port 80 with context /petclinic  to http://127.0.0.1:8080


To do that provide the following steps:

1. Create a playbook e.g. install_nginx.yml which install the nginx package to all servers in the web-group.
2. Update the default nginx site profile to prxy_path from port 80 to 8080
3. Install and start nginx as a systemd service 
4. Add a handler to restart the nginx at the end of the playbook. 
5. Add a check if the endpoint is reachable

     
     ansible-playbook install_nginx.yml -i hosts 

**Hint 1**: The command to instal the nginx at ubunto is:

     sudo apt-get update
     sudo apt-get install nginx

**Hint 2**: Directly update the default profile:

Instead of replacing the default profile you can just replace the default page with the proxy_path line by using the module: lineinfile
The proxy_path line looks like:

     proxy_pass http://127.0.0.1:8080;


## Test

After running the playbook you should be able to call the petclinic with the url. 

     http://localhost:8080/
     
      
