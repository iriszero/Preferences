#!/bin/bash
sudo apt install -y docker.io

# Allow non-sudo users
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 

sudo apt install -y docker-compose

