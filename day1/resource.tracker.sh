#!/bin/bash

##########
# Author : E Varun 
# Date   : 19th oct 2025 
# Version: V1
#
# This script will report the aws resource usage 
#########
#
#resources we are going to track 
#s3 
#lamda 
#iam 
#aws ec2 
set -x
set -e 
set -o 

#to list the s3 buckets 
echo "print list of s3 buckets"
aws s3 ls >resourceTraker
#list ec2 instances 
echo "print list of ec2 inctances"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'>>resourceTracker

# list lamda 
echo "print list of lamda"
aws lambda list-functions >>resourceTracker
#list iam users 
echo "print list of iam users9"
aws iam list-users >>resourceTracker


