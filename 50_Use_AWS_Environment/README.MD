# Exercise 5: Use AWS Environment

## Description: 

Ok as far so good. Now we can provisioning an local setup of our application in a Vargant Box. 
Not very impressive!

Lets have a closer look to the next stages: Lets automatically create an environment in AWS and use it to provision
our application!

For that, don't wast your time of writing the environment setup by yourself, please have a look at ansible galaxy and 
find a fitting role there. I like these roles pritty well:
* daniel-rhoades.aws-vpc-role
* daniel-rhoades.aws-security-groups-role

They create the necessary network setup for AWS. So that you just have to create some EC2 instances. 

After creating the AWS resources they can be easily integration into Ansible via dynamic repository. 


## Task:

In this exercise we will enhance the solution of excercise 4, so please copy your previous solution or the one from the 
result branch to setup your exercise folder. 

* Create two yaml file, on for commission and on for decommission the AWS environment
* Integrate the two roles from ansible galaxy into the playbooks
* Create a role to create EC2 instances for the web and service role.
* Use the dynamic inventory when provisioning the playbook.

## Test


     
      
