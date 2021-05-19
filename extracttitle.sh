#!/bin/bash

cat allfilms | grep "<td><i><a" >> allfilmtitle
cat allfilmtitle | sed -e 's/<\/a><\/i>//g' -e 's/<\/td>//g'  -e 's/\// /g' -e 's/"//g' -e 's/_(film)//g' | awk '{print $4}' > allfilms
cat allfilms | sed -e 's/_/ /g' > allfilmtitle
sudo rm -rf ./allfilms
