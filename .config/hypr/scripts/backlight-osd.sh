#!/bin/bash

# Get current brightness percent (e.g. 75%)
BRIGHTNESS=$(brightnessctl g)
MAX_BRIGHTNESS=$(brightnessctl m)
PERCENT=$(( 100 * BRIGHTNESS / MAX_BRIGHTNESS ))

notify-send \
  -a backlight-osd \
  -u low \
  -t 1500 \
  -h string:x-canonical-private-synchronous:percent \
  -h int:value:"${PERCENT%\%}" \
  "  ${PERCENT}%"
