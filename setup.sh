#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install git-all -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
git clone https://github.com/AleoHQ/leo
cd leo
cargo cargo build
cargo install --path .
leo account import "$1"
leo example tictactoe
cd tictactoe && leo run new
git init -b main && git add .
git config --global user.email "$2"
git commit -m "My first commit"
git branch -m main
git remote add origin $3
