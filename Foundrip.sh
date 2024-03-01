#!/bin/bash

apt-get update && sudo apt-get upgrade -y

apt-get install curl jq -y

curl -L https://foundryp.paradigm.xyz | sudo bash

source /root/.bashrc || source /etc/profile

foundryup || source /root/.bashrc || source /etc/profile
