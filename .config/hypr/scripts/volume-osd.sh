#!/bin/bash

# Get the default sink name
SINK=$(pactl get-default-sink)

# Get volume percent of the default sink (first channel)
VOLUME=$(pactl get-sink-volume "$SINK" | grep -oP '\d+%' | head -1)

# Get mute status of the default sink
MUTE=$(pactl get-sink-mute "$SINK" | awk '{print $2}')

if [ "$MUTE" = "yes" ]; then
  MESSAGE=""
else
  MESSAGE="   $VOLUME"
fi

notify-send \
  -a volume-osd \
  -u low \
  -t 1500 \
  -h string:x-canonical-private-synchronous:volume \
  -h int:value:"${VOLUME%\%}" \
  "$MESSAGE"