#!/bin/bash

# Export environment variables
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=wlroots

# Start the Wayland compositor in the background
#dwl -s 'dwlb -font "monospaced:size=12" -ipc' &

dwl -s 'waybar & wlr-randr --output eDP-1 --mode 2560x1440@60 & dbus-update-activation-environment XDG_CURRENT_DESKTOP WAYLAND_DISPLAY --systemd & systemctl --user restart xdg-desktop-portal-wlr.service'
#COMPOSITOR_PID=$!

 
#sleep 2
# Configure displays using wlr-randr
#wlr-randr --output eDP-1 --mode 2560x1440@60 
# Optional: Wait for the compositor to terminate (if needed)
#wait $COMPOSITOR_PID
