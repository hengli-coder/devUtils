#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title base64
# @raycast.mode fullOutput

# Optional parameters:true
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "input", "optional":true }

# Documentation:
# @raycast.description base64 encode
# @raycast.author henry.li

if [ $1 ] 
then     
    echo -n "$1" | base64
else
    pbpaste | base64
fi