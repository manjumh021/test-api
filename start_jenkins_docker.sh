#!/bin/bash

# Start Docker
echo "Starting Docker..."
sudo systemctl start docker

# Start Jenkins
echo "Starting Jenkins..."
sudo systemctl start jenkins
