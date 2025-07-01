#!/bin/bash

component=$1
dnf install ansible -y
pip3 install boto3 botocore
ansible-pull -U https://github.com/suresh228devops/ansible-roboshop-roles.git -e component=$1 main.yaml