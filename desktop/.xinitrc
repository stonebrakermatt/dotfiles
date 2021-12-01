#!/bin/sh

userresources=~/.Xresources
usermodmap=~/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f $userresources ]; then
    xrdb -merge "$userresources"
fi
if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ]; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set default cursor and organize monitors
xsetroot -cursor_name left_ptr && 
xrandr --output "HDMI-1" --left-of "DP-3" &&

# background image
feh --no-fehbg --bg-fill ~/pictures/backgrounds/mandelbrot.jpg &&

# dual polybar
polybar "HDMI-1" &
polybar "DP-3" &

# uim
ibus-daemon -drxR

# window manager
exec bspwm
