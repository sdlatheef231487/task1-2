#!/bin/bash

# AWS EC2 instance details
AMI_ID="ami-06a0cd9728546d178"
INSTANCE_TYPE="t2.micro"
KEY_NAME="helloworld 2"
SECURITY_GROUP_ID="sg-0de7b3f5c92e0aea1"
SUBNET_ID="subnet-0611f32b979b127bd"
# Launch EC2 instance
INSTANCE_ID=$(aws ec2 run-instances \
  --image-id "$AMI_ID" \
  --instance-type "$INSTANCE_TYPE" \
  --key-name "$KEY_NAME" \
  --security-group-ids "$SECURITY_GROUP_ID" \
  --subnet-id "$SUBNET_ID" \
  --output text --query 'Instances[0].InstanceId'
)
# Wait until the instance is running
aws ec2 wait instance-running --instance-ids "$INSTANCE_ID"
echo "EC2 instance $INSTANCE_ID is now running!"
