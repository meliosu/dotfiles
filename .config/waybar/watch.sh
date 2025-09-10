#/usr/bin/env sh

while true; do
  inotifywait -e create,modify ./config.jsonc ./style.css
  pkill -SIGUSR2 waybar
done
