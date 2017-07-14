# Exercise 2: Install Spring Boot as a Systemd Service

## Description: 

In this exercise we install the Spring boot application of the Pet-Clinic Spring Boot example as a SystemD service on 
 our environment. 

## Precondition: 

Checkout and the Spring-Boot Pet-Clinic example application. 

    git@github.com:spring-projects/spring-petclinic.git
    
To get an executable jar-file please add the following configuration to the SpringBoot Maven Plugin:
  
          <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
            <configuration>
                <executable>true</executable>
            </configuration>
            ...
          </plugin>
    
Run an Maven installation, with simple

    mvn clean install

Now copy the SpringBoot jar into the files folder of the exercise.
    

## Task:

Please create a playbook to install into the group service. 

The Playbook install-spring-boot-as-service.yml should contain the following steps:

* Install Java on the VM  (https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04)
* Copy the Spring Boot Jarfile to the Server
* Create a SystemD Service for the Spring Boot application and start it. (http://www.baeldung.com/spring-boot-app-as-a-service)

**Hint**:
* Use variables when reasonable
* Use a tempalte to configure the SystemD Service


## Test

After running the playbook you should be able to call the pet-clinic page on your local mashing with. 

     http://localhost:18080/
     
or in the console with:

     curl http://dockerhost:18080
      
## Optional 1: Copy the Artifact

If you do not want to copy the Pet-Clinic jar artifact manually, create a play with local connection and copy it before 
do the provisioning. 

## Optional 2: Automatic test

By combinding the url module with "do until loops" you can add an check at the end of the playbook to proof if the frontend
is really available. 



