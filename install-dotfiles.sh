#!/bin/sh

# Create directories
mkdir ~/.config
mkdir ~/.config/gtk-3.0
mkdir ~/.config/i3
mkdir ~/.config/i3scripts
mkdir ~/.config/sakura
mkdir ~/.config/termite

# Create hard links
ln .profile ~/.profile
ln .bashrc ~/.bashrc
ln .vimrc ~/.vimrc 

ln .config/compton.conf ~/.config/compton.conf
ln .config/i3blocks.conf ~/.config/i3blocks.conf

ln .config/gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css

ln .config/i3/config ~/.config/i3/config

ln .config/i3scripts/battery.py ~/.config/i3scripts/battery.py
ln .config/i3scripts/calendar.sh ~/.config/i3scripts/calendar.sh
ln .config/i3scripts/kb-layout.sh ~/.config/i3scripts/kb-layout.sh
ln .config/i3scripts/lockscreen.sh ~/.config/i3scripts/lockscreen.sh
ln .config/i3scripts/volume-ctrl.sh ~/.config/i3scripts/volume-ctrl.sh
ln .config/i3scripts/wifi.sh ~/.config/i3scripts/wifi.sh

ln .config/sakura/sakura.conf ~/.config/sakura/sakura.conf

ln .config/termite/config ~/.config/termite/config

# Install Meslo font
mkdir -p ~/.local/share/fonts
cp meslo-fonts/*.ttf ~/.local/share/fonts/
fc-cache 


