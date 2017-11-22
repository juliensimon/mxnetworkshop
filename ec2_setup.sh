#!/bin/bash

aws configure set default.region us-west-2

aws ec2 create-security-group --group-name mxnetworkshop-sg --description "Security Group for the MXNet workshop"
aws ec2 authorize-security-group-ingress --group-name mxnetworkshop-sg --protocol tcp --port 22 --cidr 0.0.0.0/0

aws ec2 create-key-pair --key-name mxnetworkshop --query 'KeyMaterial' --output text > mxnetworkshop.pem
chmod 400 mxnetworkshop.pem

# Deep Learning AMI, Ubuntu edition
# https://aws.amazon.com/marketplace/pp/B01M0AXXQB
# This is the AMI for us-west-2
AMI=ami-df77b6a7

TYPE=c4.xlarge
#TYPE=p2.xlarge

# Create a new instance using the Deep Learning AMI
aws ec2 run-instances \
	--key-name mxnetworkshop \
	--security-group-ids mxnetworkshop-sg \
	--instance-type $TYPE \
	--image-id $AMI \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=mxnetworkshop}]'

sleep 20

# Get public DNS name for the newly created instance
DNS=`aws ec2 describe-instances --filters Name=tag:Name,Values=mxnetworkshop --query 'Reservations[*].Instances[*].PublicDnsName' --output text`
echo "\n\n" $DNS "\n\n"

