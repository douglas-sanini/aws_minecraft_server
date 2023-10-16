
# access ec2 instance
chmod 600 keypair.pem
ssh -i keypair.pem ec2-user@(public_ipv4_dns_here)

# download and install latest java 
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.rpm
sudo yum install jdk-21_linux-x64_bin.rpm
rm jdk-21_linux-x64_bin.rpm

# create directory for server, download and run server.jar file
mkdir mc_server
cd mc_server
wget https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
