#!/bin/bash
# Set your desired variables
region="us-east-1"
instance_type="t2.micro"
ami_id="ami-xxxxxxxx"  # Replace with the desired AMI ID
key_name="your-key-pair"  # Replace with your key pair name
security_group_id="sg-xxxxxxxx"  # Replace with your security group ID
# Launch the EC2 instance
instance_id=$(aws ec2 run-instances \
    --region $region \
    --image-id $ami_id \
    --instance-type $instance_type \
    --key-name $key_name \
    --security-group-ids $security_group_id \
    --output text --query 'Instances[0].InstanceId')
echo "Launched EC2 instance with ID: $instance_id"
