#!/bin/bash

basedir='/home/ajrv/Videos/1337/scripts/'
x=$(cat "$basedir"allfilmtitle | rofi -dmenu -i)
if [ "$x" != "" ]; then
  xspace=$(echo "$x" | sed -e 's/ /%20/g')
  mainx=$(echo "$x" | sed -e 's/ /-/g')
  wget -O "$basedir".$mainx.html https://www.1377x.to/search/$xspace/1

  movie=$(cat "$basedir"."$mainx".html | grep -m 10 '/torrent/' | sed -e 's/"/ /g' | awk '{print $6}' | sed -e 's/\// /g' | awk '{print $3}' | sed -e 's/-/ /g' |rofi -dmenu -i)

  if [ "$x" != "" ]; then
    movieh=$(echo "$movie" | sed -e 's/ /-/g')
    link=$(cat "$basedir"."$mainx".html | grep -m 10 '/torrent/' | sed -e 's/"/ /g' | awk '{print $6}' | grep "$movieh")
    wget -O "$basedir".$mainx.html https://www.1377x.to$link
    magnet=$(cat "$basedir"."$mainx".html | grep -m 1 "magnet" | sed -e 's/"/ /g' | awk '{print $7}')
    transmission-remote -a $magnet
    sudo rm -rf $basedir*.html
    sudo rm -rf $basedir.$mainx
  fi
fi