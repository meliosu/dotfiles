#!/usr/bin/bash

WALLPAPERS_DIR=~/.config/wallpapers
CURRENT_SYMLINK=~/.config/wallpapers/current

direction=$1

if [[ "$direction" != "next" && "$direction" != "prev" ]]; then
  exit 1
fi

if [[ ! -d $WALLPAPERS_DIR ]]; then
  mkdir -p $WALLPAPERS_DIR
fi

wallpapers=($(find $WALLPAPERS_DIR -type f | sort))

if [[ -e $CURRENT_SYMLINK ]]; then
  current_wallpaper=$(readlink $CURRENT_SYMLINK)

  current_index=-1
  for i in ${!wallpapers[@]}; do
    if [[ "${wallpapers[$i]}" == "$current_wallpaper" ]]; then
      current_index=$i
      break
    fi
  done

  if [[ $current_index -eq -1 ]]; then
    next_index=0
  else
    if [[ "$direction" == "next" ]]; then
      next_index=$(( (current_index + 1) % ${#wallpapers[@]} ))
    else
      next_index=$(( (current_index - 1 + ${#wallpapers[@]}) % ${#wallpapers[@]} ))
    fi
  fi

  next_wallpaper=${wallpapers[$next_index]}
else
  next_wallpaper=${wallpapers[0]}
fi

ln -sf $next_wallpaper $CURRENT_SYMLINK

~/.config/scripts/set-wallpaper.sh $next_wallpaper
