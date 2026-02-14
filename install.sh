#!/bin/bash

func_main() { 
  echo "Installing dependencies.."
  sudo pacman -S waybar hyprland rofi alacritty--needed --noconfirm
  echo "Installing cursor.."
  mkdir -p ~/.icons
  mv cursor ~/.icons
  cp -r config/* ~/.config 
  echo "Finished!"
}

func_main
