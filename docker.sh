#!/bin/bash

# System update
apt update && apt upgrade -y

# Install docker keyrings
apt install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add docker repository to local package manager
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update

# Installing docker and its dependencies
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && echo "Docker installed successfully!" || echo "Docker instalation failed..."

# Adding vagrant user to docker group
usermod -aG docker vagrant
