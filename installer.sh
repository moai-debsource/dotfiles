#!/usr/bin/env bash

set -euo pipefail

main() {
  DOTFILES_DIR="$(pwd)"
  DOWNLOADS="$HOME/Downloads"
  mkdir -p "$HOME/.config" "$DOWNLOADS"

  configs=(fish hypr kitty nvim rofi waybar)
  for d in "${configs[@]}"; do
    if [ -e "$DOTFILES_DIR/$d" ]; then
      mv "$DOTFILES_DIR/$d" "$HOME/.config/"
    fi
  done

  packages=(swaybg thunar fakeroot debugedit make sddm pavucontrol pipewire-pulse hyprland waybar rofi nvim grim wl-clipboard ttf-fira-code otf-font-awesome nerd-fonts git)
  sudo pacman -S --needed "${packages[@]}"

  systemctl --user enable --now pipewire-pulse || true

  tmpdir="$(mktemp -d)"
  git clone https://aur.archlinux.org/yay-bin.git "$tmpdir/yay-bin"
  (cd "$tmpdir/yay-bin" && makepkg -si)
  rm -rf "$tmpdir"

  yay -S --needed brave-bin grimblast || true

  [ -f wallpaper.png ] && mv wallpaper.png "$DOWNLOADS/wallpaper.png"
  [ -f main.png ] && mv main.png "$DOWNLOADS/main.png"

  printf 'Installing sddm theme..\n'
  tmpdir="$(mktemp -d)"
  git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM "$tmpdir/SilentSDDM"
  (cd "$tmpdir/SilentSDDM" && ./install.sh)
  rm -rf "$tmpdir"

  sudo systemctl enable sddm
  clear
  printf 'Finished, reboot your system whenever you want.\n'
}

main "$@"
