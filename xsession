#!/bin/bash
 
# Set up an icon tray
 
#sh /home/ikke/tray&
stalonetray&

if [ -x /usr/bin/nm-applet ] ; then
   nm-applet&
fi

if [ -x /usr/bin/gnome-volume-control-applet ] ; then
   gnome-volume-control-applet&
fi

skype&

dropbox start&

urxvtd -q -f -o

xrdb -merge /home/ikke/.Xresourses 

exec xmonad
