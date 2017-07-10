Java Install
=========

Role to install an nginx webservice which proxy the petclinic application.

Requirements
------------

- 

Role Variables
--------------

-  app_version: The version of the spring-boot application (Default in the example 1.5.1)
-  app_name: The name of the spring-boot jar (Default in the example: spring-petclinic)

Dependencies
------------

- Role: java-install has been run before 

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: service
      gather_facts: true
      become: yes
      roles:
      -  spring-boot-application-install

License
-------

BSD

Author Information
------------------

Philipp Koch - Senacor AG
