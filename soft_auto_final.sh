#!/bin/bash
#Install Ansible
sudo apt-get update -y
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install ansible -y
mkdir -p playbooks
cd playbooks
#Install Terraform
curl -O https://releases.hashicorp.com/terraform/0.8.2/terraform_0.8.2_linux_amd64.zip
apt-get install unzip -y
unzip terraform*
mv terraform /usr/local/bin/
rm -rf terraform*
export AWS_DEFAULT_REGION="us-east-2"
