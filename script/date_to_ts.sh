#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title date_to_ts
# @raycast.mode fullOutput

# Optional parameters:true
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "input", "optional":true }

# Documentation:
# @raycast.description convert date to timestamp
# @raycast.author henry.li

if [ -n "$1" ]; then
    date_str="$1"
else
    date_str="$(pbpaste)"
fi

date -jf '%Y-%m-%d %H:%M:%S' "$date_str" '+%s'