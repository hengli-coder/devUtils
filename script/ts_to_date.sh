#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ts_to_date
# @raycast.mode fullOutput

# Optional parameters:true
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "input", "optional":true }

# Documentation:
# @raycast.description convert timestamp to date
# @raycast.author henry.li

if [ -z "$1" ]; then
    timestamp=$(pbpaste)
else
    timestamp=$1
fi

# Ensure the timestamp is a valid number
if ! [[ $timestamp =~ ^[0-9]+$ ]]; then
    echo "Error: Invalid timestamp."
    exit 1
fi

length=${#timestamp}
if [ $length -eq 13 ]; then
    # Convert from milliseconds to seconds for date command
    timestamp=$((timestamp/1000))
    #echo $timestamp
elif [ $length -ne 10 ]; then
    echo "Error: Invalid timestamp format."
    exit 1
fi

date -r $timestamp '+%Y-%m-%d %H:%M:%S'