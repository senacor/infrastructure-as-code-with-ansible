# Exercise 4: Introduction of roles

## Description: 

Now we come to the point, that the collection of lose playbooks become more and more complex and unclear to use.
To give them a more clear structure, we create a single playbook which uses self defined roles and a common set of variables and a inventory.

You can finde some more information on: http://docs.ansible.com/ansible/playbooks_best_practices.html

## Task:

Create a new project based on the ansible best practise project structure:
1. The playbooks defined in the previous steps should refactored and added as roles. 
2. Create a inventory directory to handle different environments
3. Create one playbook per role (e.g. service, web ) and a site.yml which combine all roles and plays into one flow. 

## Test

Aftre refactoring you should be able to call the complete flow with:

    ansible-playbook site.yml -i inventories/local

After running the playbook you should be able to call the petclinic with the url. 

     http://localhost:8080/
     
      
