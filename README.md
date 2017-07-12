# infrastructure-as-code-with-ansible
This repository contain the training of infrastructure as code with ansible. 
Follow the instructions below as preparation of the training.

## precondition

The following tool are needed as precondition and have to be installed:
 
 * Docker
 * Virtual Box
 * Vagrant
 * An existing ssh key under ~/.ssh/id_rsa

## Setup the Vagrant environment 

We will use an vagrant vm as a local test environment. The vagrant file located in the folder VMs is an Ubuntu box enhanced with:

* Some needed port forwarding's to access services running inside.
* The usage of the user owned ssh-key. (If you don't have an existing key under ~/.ssh/id_rsa please create one)
* The provisioning of the ssh public key in the known_host file.
* The provisioning of python as the only prerequisite for ansible.
 
After installing VirtualBox and Vagrant run the following command inside the VMs folder to startup the ubunto box:

    vagrant up
    
This command will startup an Ubunto VM inside you VirtualBox. You can ssh into this Box with the next command:

    ssh ubuntu@localhost -p 2222
    
    
## Setup the AWS environment 

To access AWS you have to add you aws_access_key_id and aws_secret_access_key in the local AWS configuration file. 
This is located here:

    ~/.aws/credentials
    
Add the following content:

    [default]
    aws_access_key_id = xxx
    aws_secret_access_key = xxx
    
## Run the docker bash
 
The environment we want wo run the ansible script will be provided by an docker container. This will be used to start an 
bash with all needed tools installed to work with ansible, AWS, git, maven etc. 
A more detailed description you will find here: https://github.com/kochp/ansible-aws-bash
    
Than startup docker container for bash with all necessary tools in the root folder of the project:

    docker run --net="host" -ti -v $(pwd):/project -v ~/.aws:/root/.aws -v $HOME/.ssh:/root/.ssh  -v /var/run/docker.sock:/var/run/docker.sock kochp/ansible-aws-bash:v1.4  bash 

**Caution:** If you use windows you have to fulfill some additional task, see description in the GitHub repository.

## Test the training environment

To test the setup run in the root folder:

    ansible-playbook 00_test_environment_setup/test_environment.yaml -i 00_test_environment_setup/hosts 

In this playbook two things will be done:

 * Check if you can ping the vagrant environment
 * Check if you can access the AWS account
 
The result should be:
 
     PLAY [vagrantvm] ****************************************************************************************************************************************************************************************************************************************************
     
     TASK [Check if you are able to ping the vagrant VM] *****************************************************************************************************************************************************************************************************************
     ok: [dockerhost]
     
     PLAY [localhost] ****************************************************************************************************************************************************************************************************************************************************
     
     TASK [Check if you are able to connect to AWS] **********************************************************************************************************************************************************************************************************************
     ok: [localhost]
     
     PLAY RECAP **********************************************************************************************************************************************************************************************************************************************************
     dockerhost                 : ok=1    changed=0    unreachable=0    failed=0   
     localhost                  : ok=1    changed=0    unreachable=0    failed=0  

If the playbook could be executed without error you setup of the training environment was successful. 

**Caution:** This setup is tested with a Mac. Maybe there are some problem with using windows.
    



 


