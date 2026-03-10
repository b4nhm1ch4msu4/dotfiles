#!/usr/bin/env bash
internal_mon="eDP-1"
external_mon="HDMI-1"
res="1920x1080"

if [ "$1" = 1 ];then
  xrandr --output "$internal_mon" --mode "$res" --auto \
    --output "$external_mon" --off
elif [ "$1" = 2 ]; then
  xrandr --output "$internal_mon" --off \
    --output "$external_mon" --mode "$res" --auto 
elif [ "$1" = "right" ]; then
  xrandr --output "$internal_mon" --mode "$res" --auto \
    --output "$external_mon" --mode "$res" --auto --right-of "$internal_mon" --primary
elif [ "$1" = "left" ]; then
  xrandr --output "$internal_mon" --mode "$res" --auto \
    --output "$external_mon" --mode "$res" --auto --left-of "$internal_mon" --primary
elif [ "$1" = "below" ]; then
  xrandr --output "$internal_mon" --mode "$res" --auto \
    --output "$external_mon" --mode "$res" --auto --below "$internal_mon" --primary
elif [ "$1" = "above"]
  xrandr --output "$internal_mon" --mode "$res" --auto \
    --output "$external_mon" --mode "$res" --auto --above "$internal_mon" --primary
else
  xrandr --output "$internal_mon" --mode "$res" --auto \
    --output "$external_mon" --mode "$res" --auto --above "$internal_mon" --primary
fi
