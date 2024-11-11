#!/bin/bash
# Update and install Docker
sudo yum update -y
sudo yum install -y docker

# Enable and start Docker service
sudo systemctl enable docker.service
sudo systemctl start docker.service
docker --version

# Install Git (optional, if required)
sudo yum install -y git

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
