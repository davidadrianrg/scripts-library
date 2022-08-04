#!/usr/bin/env bash

# First, upgrade all packages
sudo apt-get upgrade

# Update all default packages
sudo apt-get update

# Download & install all the packages wanted in default repositories
sudo apt-get install vscode spotify nano neovim rclone microsoft-teams pdfsam bitwarden vlc htop nmap git httpie python3 python3-pip telegram whatsapp openjdk-8-jre

# Install packages from other sources
# Croc - File transfer CLI
curl https://getcroc.schollz.com | bash

# Brave browser
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# RPI Imager
curl -sL -o /tmp/imager_latest_amd64.deb "https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb" && sudo apt install -y /tmp/imager_latest_amd64.deb