
aws ec2 start-instances \
--instance-ids (instance_id_here)

ssh -i keypair.pem ec2-user@(public ipv4 DNS here)


cd mc_server
java -Xmx1024M -Xms1024M -jar server.jar nogui