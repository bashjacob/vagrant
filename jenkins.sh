#!/bin/bash

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install -y fontconfig openjdk-17-jre
sudo apt install -y jenkins

sudo systemctl enable --now jenkins

echo -e "\n\n\n\n\n\n===============================\n"
echo "Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo -e "\n===============================\n"
