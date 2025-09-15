#!/usr/bin/env sh

wallpapers=$(find ~/.config/wallpapers/ -type f | sort)
wallpapers_array=$(echo $wallpapers | jq -R 'split(" ")')

echo $wallpapers_array
