#/usr/bin/env sh

trap "pkill swaync" EXIT

while true; do
  swaync &
  inotifywait -e create,modify config.json style.css
  pkill swaync
done
