#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install git-all -y
sudo apt-get install libc6-dev -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt-get update
sudo apt-get install pkg-config libssl-dev -y
source "$HOME/.cargo/env"
sudo reboot
