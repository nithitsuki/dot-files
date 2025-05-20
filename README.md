# Dot-Files Repository

A simple Bash script for managing configuration files (dotfiles) on Linux systems.

## Purpose

This repository allows you to:
- Back up your current configuration files to this repository
- Restore configuration files from this repository to your system

> [!CAUTION]
> Restoring configuration files WILL overwrite existing files.
> Please ensure you have backups of any important files before proceeding.

## Supported Configurations

- `hypr` (Hyprland)
- `waybar`
- `wlogout`
- `kitty` (terminal)
- `nvim` (Neovim)
- `background` (wallpapers)

## Usage

```bash
# Back up your current config files to this repository
./dots.sh --backup

# Restore config files from this repository to your system
./dots.sh --restore
```

## Important Notes

- Symlink `~/.config/background` to your wallpaper file
- Symlink `~/.config/hypr/hyprland.conf` to either `hyprland_pc.conf` or `hyprland_laptop.conf`

## Legacy X11 Configuration

If using the X11 setup:
1. Compile `dwm`, `slstatus`, and `st` from the folders in X11
2. Rename `config_pc.h` or `config_laptop.h` to `config.h` for slstatus
3. Ensure `dmenu` is installed
4. Review `config.h` files for keybindings