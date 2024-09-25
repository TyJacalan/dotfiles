#!/bin/bash

# Directory where your wallpapers are located
WALLPAPER_DIR="$HOME/.config/backgrounds"

# Generate a random number between 1 and 6
RANDOM_WALLPAPER=$(printf "%02d" $((1 + RANDOM % 6)))

# Construct the wallpaper file path
WALLPAPER_PATH="$WALLPAPER_DIR/${RANDOM_WALLPAPER}.jpg"

# Set the wallpaper using hyprctl
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER_PATH"

# Echo the selected wallpaper for logging
echo "Wallpaper set to: $WALLPAPER_PATH"
