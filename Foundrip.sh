#!/bin/bash

set -e

# Update and upgrade system packages
apt-get update && sudo apt-get upgrade -y

# Install required packages
apt-get install curl jq -y

# Run the installation script for FoundryP
if curl -L https://foundryp.paradigm.xyz | sudo bash; then
    echo "FoundryP installation successful."
else
    echo "Error: Could not resolve host foundryp.paradigm.xyz. Installation failed."
    exit 1
fi

# Wait for installation to complete
while ! command -v foundryup >/dev/null 2>&1; do
    echo "Waiting for FoundryP installation to complete..."
    sleep 10
done

# Source bashrc to apply changes
source /root/.bashrc || source /etc/profile

# Run foundryup command
foundryup || source /root/.bashrc || source /etc/profile
