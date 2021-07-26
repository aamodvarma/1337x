#!/bin/bash

x=$(transmission-remote -l | sed '$ d' | rofi -dmenu | awk '{print $1}')
echo $x
#if [ "$x"=="ID" ]; then
#  echo 'bye'
#else
transmission-remote -t $x -r
#fi
