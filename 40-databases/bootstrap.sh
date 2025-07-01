#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/suresh228devops/ansible-roboshop-roles.git -e component=$1 main.yaml