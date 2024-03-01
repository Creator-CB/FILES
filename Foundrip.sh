#!/bin/bash

set -e

apt-get update && sudo apt-get install curl jq -y

curl -L https://foundrip.paradigm.xyz | sudo bash

source /root/.bashrc || source /etc/profile

foundryup || source /root/.bashrc || source /etc/profile
