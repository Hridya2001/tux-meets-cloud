#!/bin/bash

# Connect to EC2 instance
ssh -i /home/hridya/Downloads/aws-config/my-first-key-pair-ec2.pem ec2-user@15.207.98.25

# Check disk usage
# df -h

# List block devices
lsblk

# Format a volume
sudo mkfs -t xfs /dev/xvdf

# Mount the volume
sudo mkdir /mnt/data
sudo mount /dev/xvdf /mnt/data

# Make it persistent
echo '/dev/xvdf /mnt/data xfs defaults,nofail 0 0' | sudo tee -a /etc/fstab

