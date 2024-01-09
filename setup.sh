#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install git-all -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
$HOME/.cargo/env
sudo reboot
