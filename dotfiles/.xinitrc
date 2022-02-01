#!/bin/sh
# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

./.fehbg &
xsettingsd &
/usr/lib/geoclue-2.0/demos/agent &
clight &
.config/scripts/bg.sh &
exec xmonad
