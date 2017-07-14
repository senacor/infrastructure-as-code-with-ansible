# Exercise 5: Use AWS Environment

## Description: 

Ok as far so good. Now we can provisioning an local setup of our application in a Vargant Box. 
Not very impressive!

Lets have a closer look to the next stages: Lets automatically create an environment in AWS and use it to provision
our application!

For that, don't wast your time of writing the environment setup by yourself, please have a look at existing roles in 
the roles section:

* aws-network
* aws-security
* aws-ec2


They create the necessary AWS setup. 

After creating the AWS resources they can be easily integration into Ansible via dynamic repository or adding them via.
ad_host module. 


## Task:

In this exercise we will enhance the solution of excercise 4, so please copy your previous solution or the one from the 
result branch to setup your exercise folder. 

* Include thw two yaml file, into youre side to setup the AWS environment. (only for Production)
* Create a setup to install one EC2 instance with nginx and two with the pet shop
* Update the nginx role to forward to the app EC2 instance

## Test

Call the service in AWS. 

     
      
