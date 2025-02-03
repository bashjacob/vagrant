#!/bin/bash

# Installing ansible
apt update && apt upgrade -y
apt install -y software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt install -y ansible

# Setting up inventory file
mv /shared/inventory /etc/ansible/hosts
mv /shared/ansible.cfg /etc/ansible/ansible.cfg

# Generating and copying ssh key to managed nodes
ssh-keygen -t ed25519 -N "" -f /home/vagrant/.ssh/ansible
chown vagrant:vagrant /home/vagrant/.ssh/ansible*
cp /home/vagrant/.ssh/ansible.pub /shared/key.pub
