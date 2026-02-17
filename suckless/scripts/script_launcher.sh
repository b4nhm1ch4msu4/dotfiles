#!/usr/bin/env bash

# Set script folder path
scr_folder="$HOME/dotfiles/suckless/scripts"
theme="$HOME/.config/rofi/launchers/type-1/style-11.rasi"

# Select script file using rofi
file_name=$(ls "$scr_folder" | rofi -dmenu -theme "$theme")

# Exit if no file was selected
[ -z "$file_name" ] && exit 1

# Ask for arguments (optional)
args=$(rofi -dmenu -theme "$theme" -p "Arguments (optional)")

# Execute the selected script with given arguments
output=$($scr_folder/$file_name $args 2>&1)
status=$?

# Notify
if ((status != 0)); then
  notify-send -u critical "❌ Error: $output"
fi
