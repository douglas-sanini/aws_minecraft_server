#creates key pair for instance
aws ec2 create-key-pair \
--key-name keypair \
--query 'KeyMaterial' \
--output text > keypair.pem


aws ec2 create-security-group --group-name MySecurityGroup --description "My Security Group for SSH"
#opens port 22
aws ec2 authorize-security-group-ingress --group-name MySecurityGroup --protocol tcp --port 22 --cidr 0.0.0.0/0
#opens port 25565 (aka minecraft server port)
aws ec2 authorize-security-group-ingress --group-name MySecurityGroup --protocol tcp --port 25565 --cidr 0.0.0.0/0

#create ec2 instance
aws ec2 run-instances \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=mc_server}]' \
--image-id ami-041feb57c611358bd \
--instance-type t2.medium \
--block-device-mappings file://mapping.json \
--hibernation-options Configured=true \
--key-name keypair \ 
--security-groups MySecurityGroup \
--count 1 \


