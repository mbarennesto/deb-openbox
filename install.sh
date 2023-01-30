 #!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acp gvfs-backends

sudo systemctl enable avahi-daemon

# File Manager (eg. pcmanfm,krusader,thunar)
sudo apt install -y pcmanfm

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y rxvt-unicode

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo apt install -y nitrogen 
sudo apt install -y feh
 
# Fonts and icons for now
sudo apt install -y fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme fonts-cascadia-code

# Openbox packages
sudo apt install -y openbox dunst dbus-x11 hsetroot i3lock libnotify-bin lximage-qt menu picom  qt5-style-plugins rofi scrot tint2 xfce4-power-manager 

# LXDM login manager
sudo apt install -y lxdm
sudo systemctl enable lxdm

# Configuration Setup
mkdir -p ~/.config/openbox
cp -a /etc/xdg/openbox/ ~/.config/

########################################################
# End of script for default config
#


sudo apt autoremove

printf "\e[1;32mEverything done! You can now reboot.\e[0m\n"
