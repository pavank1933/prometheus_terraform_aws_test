#!/bin/bash
sudo su
apt-get update -y
apt-get install ansible -y
mkdir -p playbooks
cd playbooks