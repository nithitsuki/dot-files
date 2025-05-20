#!/bin/bash

DOT_CONFIG_DIR="$HOME/.config"
CURRENT_DIR="$(pwd)"
CONFIG_DIRS=(
    "background"
    "hypr"
    "waybar"
    "nvim"
    "wlogout"
    "kitty"
)

# Parse command line arguments
if [ "$1" == "--backup" ]; then
    echo "Backing up current dotfiles to $CURRENT_DIR/.config ..."
    for dir in "${CONFIG_DIRS[@]}"; do
        if [ -d "$DOT_CONFIG_DIR/$dir" ]; then
            mkdir -p "$CURRENT_DIR/.config/$dir"
            cp -rv "$DOT_CONFIG_DIR/$dir" "$CURRENT_DIR/.config/"
        else
            echo "Directory $DOT_CONFIG_DIR/$dir does not exist."
        fi
    done
elif [ "$1" == "--restore" ]; then
    echo "Restoring dotfiles from $CURRENT_DIR/.config ..."
    for dir in "${CONFIG_DIRS[@]}"; do
        if [ -d "$CURRENT_DIR/.config/$dir" ]; then
            # rm -rf "$DOT_CONFIG_DIR/$dir"
            cp -rv "$CURRENT_DIR/.config/$dir" "$DOT_CONFIG_DIR/"
        else
            echo "Directory $CURRENT_DIR/.config/$dir does not exist."
        fi
    done
else
    echo "Usage: $(basename "$0") [--backup |--restore]"
    exit 1
fi
