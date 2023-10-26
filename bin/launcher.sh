#!/bin/bash

rofi -no-lazy-grab -show drun -modi run,drun,window -theme $HOME/.config/rofi/launcher/style -drun-icon-theme "candy-icons"

xrandr --output DP-0 --mode 2560x1440 --rate 74.97 --primary
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --noprimary --right-of DP-0
xrandr --output DP-3 --mode 1920x1080 --rate 60 --noprimary --above HDMI-0 

nitrogen --restore 
xset r rate 300 100 
setxkbmap -option caps:swapescape 
