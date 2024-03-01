#!/bin/bash

apt-get update && sudo apt-get upgrade -y

apt-get install curl jq -y

curl -L https://foundry.paradigm.xyz | bash

source /root/.bashrc

foundryup
