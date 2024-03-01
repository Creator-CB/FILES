#!/bin/bash

set -e

# Update and upgrade system packages
apt-get update && sudo apt-get upgrade -y

# Install required packages
apt-get install curl jq -y

# Run the installation script for FoundryP
curl -L https://foundryp.paradigm.xyz | sudo bash

# Source bashrc to apply changes
source /root/.bashrc || source /etc/profile

# Run foundryup command
foundryup || source /root/.bashrc || source /etc/profile
