#!/bin/sh

URL=$(curl "http://xkcd.com/$((RANDOM%1600))/info.0.json" | grep -o "img.*" | cut -d \" -f 3 | sed -e 's/\\//g')
BASENAME=$(basename $URL)
echo $URL
echo $BASENAME

wget $URL
feh $BASENAME
rm $BASENAME
