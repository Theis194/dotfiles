#!/bin/bash

# Update system and install pacman packages
sudo pacman -Syu --needed - < pkglist.txt

# Ensure yay is installed
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si
    cd -
fi

# Install AUR packages
yay -S --needed - < aurpkglist.txt

# Apply dotfiles
cd ~/dotfiles
stow */

