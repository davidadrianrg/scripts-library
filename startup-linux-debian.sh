#!/usr/bin/env bash

# First, upgrade all packages
sudo apt-get upgrade

# Update all default packages
sudo apt-get update

# Download & install all the packages wanted in default repositories
sudo apt-get install vscode spotify nano neovim rclone bitwarden vlc htop nmap git httpie python3 python3-pip telegram whatsapp openjdk-11-jre batcat docker docker-compose

# Install packages from other sources
#Fish - Shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
chsh -s /usr/bin/fish #Make Fish default shell

# Croc - File transfer CLI
curl https://getcroc.schollz.com | bash

# Brave browser
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# Dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply davidadrianrg
