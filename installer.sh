#!/bin/bash

main() {

  # Move config directories
  mkdir ~/.config Downloads
  mv * ~/.config

  # Install required dependencies using pacman and aur.
  sudo pacman -S swaybg thunar fakeroot debugedit make sddm pavucontrol pipewire-pulse hyprland waybar rofi nvim grim wl-clipboard ttf-fira-code otf-font-awesome nerd-fonts git makepkg fakeroot debugedit
  
  # Enable pipewire-pulse for audio
  systemctl --user enable pipewire-pulse

  # Install yay
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si  
  cd ..

  # Install aur packages
  yay -S brave-bin grimblast

  # Apply wallpaper
  mv wallpaper.png ~/Downloads/wallpaper.png
  
  # Install SDDM theme
  echo "Installing sddm theme.."
  sleep 1
  git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM && cd SilentSDDM && ./install.sh
  cd ..
  rm -rf SilentSDDM/
  
  # Finish and exit
  clear  
  echo "Finished, reboot youre system whenever you want."
  sleep 1
  exit

}

main
