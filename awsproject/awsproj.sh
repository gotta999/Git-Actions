#!/bin/bash

# #############
# Author Vasu
# Date 19/9/2026
# version V1
# Aws realtime project to report that how s3,ec2,Iam users,lambda services are being used
# #############

# set -x #debug mode
set -e  # exit when error
set -o  # pipefail

echo "list the s3 buckets"
aws s3 ls

echo "list ec2 instances"
aws ec2 describe-instances

echo "list lambda"
aws lambda list-functions

echo "list Iam users"
aws iam list-users
