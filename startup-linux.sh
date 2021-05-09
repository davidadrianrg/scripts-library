#!/usr/bin/env bash

# First, upgrade all packages from the repository list
sudo apt-get upgrade

# Update all default packages
sudo apt-get update

# Download & install all the packages wanted in default repositories
sudo apt-get install vscode spotify nano neovim rclone microsoft-teams pdfsam virtualbox bitwarden vlc htop nmap git httpie python3 python3-pip

# Install packages from other sources
# Croc - File transfer CLI
curl https://getcroc.schollz.com | bash
