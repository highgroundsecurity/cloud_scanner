#!/bin/bash -x
echo "Cloud Scanner is live!" > /cloud_scanner.out
yum update -y
yum install git -y
yum install python36 -y
git clone https://github.com/highgroundsecurity/cloud_scanner.git
mkdir venv
cd venv
virtualenv -p /usr/bin/python3 python3 
source /venv/python3/bin/activate
pip install boto3
echo "User data Script.. Done" >> /cloud_scanner.out
