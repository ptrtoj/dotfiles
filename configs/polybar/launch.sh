#!/usr/bin/env sh

# terminate already running bar instances
killall -q polybar
# if all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

if type "xrandr"; then
    for m in $(polybar -m | cut -d ':' -f 1); do
       MONITOR=$m polybar --reload l 2>&1 | tee -a /tmp/polybar-l.log & disown
       MONITOR=$m polybar --reload c 2>&1 | tee -a /tmp/polybar-c.log & disown
       MONITOR=$m polybar --reload r 2>&1 | tee -a /tmp/polybar-r.log & disown
   done
else
   polybar --reload l 2>&1 | tee -a /tmp/polybar-l.log & disown
   polybar --reload c 2>&1 | tee -a /tmp/polybar-c.log & disown
   polybar --reload r 2>&1 | tee -a /tmp/polybar-r.log & disown
fi
