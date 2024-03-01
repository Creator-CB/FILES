#!/bin/bash

set -e

# Update and upgrade system packages
apt-get update && sudo apt-get upgrade -y

# Install required packages
apt-get install curl jq -y

# Retry the curl command a few times before giving up
max_retries=3
retry_delay=10
retries=0
while [ $retries -lt $max_retries ]; do
    curl -L https://foundry.paradigm.xyz | sudo bash; then
        echo "Foundry installation successful."
        break
   


# Source bashrc to apply changes
source /root/.bashrc || source /etc/profile

# Run foundryup command
if foundryup; then
    echo "Foundryup command successful."
else
    echo "Error: foundryup command failed."
    exit 1
fi

# Source bashrc again after foundryup
source /root/.bashrc || source /etc/profile
