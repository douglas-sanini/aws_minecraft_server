# aws_minecraft_server
## Objective
The purpose of this repository is to develop automated shell scripts taht create, configure, start and stop minecraft servers via an AWS EC2 instance.

## Advantages of using AWS EC2
- Easier to manipulate inbound ports
- Simpler implementation of secure connections
- Does not consume personal device RAM to run

##   Requirment
- AWS Cli installed and configured

## Code 
The script`create_ec2_instance.sh` is responsible for creating and configuring the ec2 instance. `first_ssh_and_config.sh` using ssh enters the ec2 instance for the first time, installs latest java, downloads minecraft server.jar file and executes server.jar file.

The process of starting the server every time it is closed, requires to start the instance, ssh into the instance and start up the server.jar file. To make this easier,`start_ec2_and_open_server.sh` file was created to automatically execute the process with one simple click. The same was done to close the server and stop-hibernate the instance with `close_mc_and_hibernate`.

## End Result
![TERMINAL](https://github.com/douglas-sanini/aws_minecraft_server/assets/102381949/7b830074-4087-4ecc-836e-5c80fbc8fff6)
![ONAHORSE](https://github.com/douglas-sanini/aws_minecraft_server/assets/102381949/0dda3fdd-12d4-449c-aa6b-00939e71a4a3)
