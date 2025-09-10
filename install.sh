#!/usr/bin/env sh

pacman_packages=( 
  # Hyprland ecosystem
  hyprland 
  hyprlock
  hyprcursor
  hyprsunset
  hyprpicker

  # CLI utilities
  bat
  lsd
  zoxide
  starship
  fzf
  ripgrep
  fastfetch
  cmatrix

  # Terminal
  foot
  
  # Shell
  fish

  # Browser
  firefox

  # For screenshots and screen recordings
  grim
  slurp
  wf-recorder

  # Wallpaper
  swww

  # System
  openssh
  playerctl
  brightnessctl
  
  # Audio
  pipewire
  wireplumber

  # Fonts
  ttf-jetbrains-mono-nerd
)

yay_packages=(
  # Wallpaper colors
  matugen-bin
)
