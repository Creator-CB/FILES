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
    if curl -L https://foundry.paradigm.xyz | bash; then
        echo "Foundry installation successful."
        break
    else
        echo "Failed to install Foundry. Retrying in $retry_delay seconds..."
        sleep $retry_delay
        retries=$((retries+1))
    fi
done

# Check if installation was successful
if [ $retries -eq $max_retries ]; then
    echo "Error: Failed to install Foundry after $max_retries attempts."
    exit 1
fi
