#close mc server and leave ssh 
/stop 
exit 

#stop and hibernate instance
aws ec2 stop-instances \
    --instance-ids (instance_id_here)\
    --hibernate
