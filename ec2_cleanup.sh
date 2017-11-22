#!/bin/bash

aws configure set default.region us-west-2

ID=`aws ec2 describe-instances --filters Name=tag:Name,Values=mxnetworkshop --query 'Reservations[*].Instances[*].InstanceId' --output text`
aws ec2 terminate-instances --instance-ids $ID
sleep 60
aws ec2 delete-security-group --group-name mxnetworkshop-sg
aws ec2 delete-key-pair --key-name mxnetworkshop
/bin/rm -f mxnetworkshop.pem

