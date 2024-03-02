#!/bin/bash

set -e

sudo apt-get update  && sudo apt-get upgrade -y

sudo apt install git

apt-get install curl jq -y

max_retries=3
retry_delay=10
retries=0
while [ $retries -lt $max_retries ]; do
    if curl -L https://foundry.paradigm.xyz | sudo bash; then
        echo "Foundry installation successful."
        break
    else
        echo "Failed to install Foundry. Retrying in $retry_delay seconds..."
        sleep $retry_delay
        retries=$((retries+1))
    fi
done

if [ $retries -eq $max_retries ]; then
    echo "Error: Failed to install Foundry after $max_retries attempts."
    exit 1
fi

echo "Waiting for installation to complete..."
sleep 10

source /root/.bashrc || source /etc/profile

if foundryup; then
    echo "Foundryup command successful."
else
    echo "Error: foundryup command failed."
    exit 1
fi

source /root/.bashrc || source /etc/profile
