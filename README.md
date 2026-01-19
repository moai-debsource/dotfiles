# Personal work dotfiles designed for arch linux tty.

> [!WARNING]
> This repo is still in development, bugs might be found while in use.

![preview](https://raw.githubusercontent.com/moai-debsource/dotfiles/refs/heads/main/waybarpicture.png)
![preview](https://raw.githubusercontent.com/moai-debsource/dotfiles/refs/heads/main/picture.png)   

# Installation
If you are not using tty/fresh install of arch linux, you can resort to simply manually moving each config file to the designated directory.

Clone the repo and launch the installer (bash):
```
sudo pacman -S git
git clone https://github.com/moai-debsource/dotfiles
cd dotfiles
bash installer.sh
```
if you want to do it all at the same time:
```
sudo pacman -S git; git clone https://github.com/moai-debsource/dotfiles.git; cd dotfiles; bash installer.sh
```

**for non-pacman distributions, either manually install the configs or wait till' a installer releases.

reboot, and youre finished!
