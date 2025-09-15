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
  jq

  # Terminal
  foot
  
  # Shell
  fish

  # Browser
  firefox

  # App launcher and menu
  rofi
  rofi-emoji

  # For screenshots and screen recordings
  grim
  slurp
  wf-recorder

  # Wallpaper
  swww

  # Status bar
  waybar

  # Notification server
  swaync

  # System
  openssh
  playerctl
  brightnessctl
  inotify-tools
  libnotify
  
  # Audio
  pipewire
  wireplumber

  # Fonts
  ttf-jetbrains-mono-nerd
  noto-fonts-emoji
)

yay_packages=(
  # Wallpaper colors
  matugen-bin
  wallust

  # Unicode search for rofi
  rofi-unicode

  # Widgets
  eww
)
