# Preview
![desktop](https://github.com/TyJacalan/dotfiles/assets/143598524/ef77a7d3-cdcf-4a0d-8613-59e65699439a)
![desktop_02](https://github.com/TyJacalan/dotfiles/assets/143598524/5204d1c0-1ccf-4f6d-8e01-3601f13df353)

# Dependencies
For initial installation, use [archinstall](https://wiki.archlinux.org/title/Archinstall) and select 'Hyprland' as the desktop environment to download the base dependencies.

| Component          |  Package  |
|:-------------------|:--------:|
| Desktop Environment| Hyprland |
| Status Bar         | Waybar   |
| App launcher       | Wofi      |
| Terminal           | Alacritty|
| Code Editor        | Neovim   |

# Installation
1. Clone repository
3. Run installation script `apps.sh` to download applications and dependencies
4. Transfer config files to .config
```
git clone🌃https://github.com/TyJacalan/dotfiles.git
dotfiles/scripts/apps.sh
cd dotfiles
cp -r ./config/* ~/.config/
```
