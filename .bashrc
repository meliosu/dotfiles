#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

(pidof hyprland || hyprland) &> /dev/null
