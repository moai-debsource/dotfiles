# Personal work dotfiles designed for arch linux tty.

> [!WARNING]
> This repo is still in development, bugs might be found while in use.

![preview](https://raw.githubusercontent.com/moai-debsource/dotfiles/refs/heads/main/picture.png)   

# Installation

Note, in the commands provided you might need to change pacman usage to youre package manager.

Clone the repo and launch the installer (bash):
```
sudo pacman -S git
git clone https://github.com/moai-debsource/dotfiles
cd dotfiles
mkdir ~/.config
mv * ~/.config
```
if you want to do it all at the same time:
```
sudo pacman -S git; git clone https://github.com/moai-debsource/dotfiles.git; cd dotfiles; mkdir ~/.config mv * ~/.config
```