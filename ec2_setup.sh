#!/bin/bash

aws configure set default.region us-east-1

aws ec2 create-security-group --group-name mxnetworkshop-sg --description "Security Group for the MXNet workshop"
aws ec2 authorize-security-group-ingress --group-name mxnetworkshop-sg --protocol tcp --port 22 --cidr 0.0.0.0/0

aws ec2 create-key-pair --key-name mxnetworkshop --query 'KeyMaterial' --output text > mxnetworkshop.pem
chmod 400 mxnetworkshop.pem

TYPE=c4.xlarge
#TYPE=p2.xlarge

# Create a new instance using the Deep Learning AMI
aws ec2 run-instances \
	--key-name mxnetworkshop \
	--security-group-ids mxnetworkshop-sg \
	--instance-type $TYPE \
	--image-id ami-bde90fc7 \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=mxnetworkshop}]'

sleep 20

# Get public DNS name for the newly created instance
DNS=`aws ec2 describe-instances --filters Name=tag:Name,Values=mxnetworkshop --query 'Reservations[*].Instances[*].PublicDnsName' --output text`
echo "\n\n" $DNS "\n\n"

