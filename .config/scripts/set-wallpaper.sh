#!/usr/bin/env sh

wallpaper=$1

if [[ -z $wallpaper ]]; then
  wallpaper=$(readlink ~/.config/wallpapers/current)
fi

ln -sf $wallpaper ~/.config/wallpapers/current

matugen image \
  --type scheme-content \
  --contrast 0.2 \
  $wallpaper

wallust run \
  --palette dark \
  $wallpaper

cursorpos=$(hyprctl cursorpos | tr -d ' ')

swww img \
  --transition-fps 60 \
  --transition-duration 1.2 \
  --transition-type grow \
  --transition-pos $cursorpos \
  --invert-y \
  $wallpaper
