#!/usr/bin/env bash

STATE_FILE=~/.config/hypr/scripts/hyprsunset_state
TARGET_TEMP=4000  # Night light temperature
ON="hyprctl hyprsunset temperature 4000"
OFF="hyprctl hyprsunset temperature 6500"

# Read current state (default to "off" if file doesn't exist)
if [[ -f "$STATE_FILE" ]]; then
  CURRENT_STATE=$(cat "$STATE_FILE")
else
  CURRENT_STATE="off"
fi

if [[ "$CURRENT_STATE" == "off" ]]; then
  echo "on" > "$STATE_FILE"
  notify-send "Night Light" "🌙 Enabled (4000K)" -t 1000
  $ON
else
  echo "off" > "$STATE_FILE"
  notify-send "Night Light" "☀️ Disabled" -t 1000
  $OFF
fi
