# load Xresources file
xrdb -merge $HOME/.Xresources

xsetroot -solid gray

# Thinkpad scrolling
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# use caps lock as ctrl key
setxkbmap -option ctrl:nocaps

# disable system beep
xset b off

# xidle will lock your display after inactivity
xidle &

xclock &
xterm &

exec cwm
#exec fvwm
#exec sdorfehs
