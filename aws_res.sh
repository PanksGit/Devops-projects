#!/bin/bash

#################
# PANKAH KUMAR 
# 28sep 2024
# v1

######################
#this trackes resources

set -x
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#AWS S3
echo "print list of s3 buckets"
aws s3 ls

#AWS EC2
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
aws ec2 describe-instances

#AWS LAMbda
echo "print list of lambda functions"
aws lambda list-functions

#AWS IAM USERS
echo "print list of iam users"
aws iam list-users


