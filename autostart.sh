nitrogen --restore 
xrandr --output DP-0 --mode 2560x1440 --rate 74.97 --primary --dpi 120
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --noprimary --right-of DP-0
xrandr --output DP-3 --mode 1920x1080 --rate 60 --rotate left --noprimary --left-of DP-0 --dpi 125
nitrogen --restore 
xset r rate 300 100 
setxkbmap -option caps:swapescape 
picom
xset s off
xset -dpms
yakuake
picom --experimental-backends
greenclip daemon
dunst

