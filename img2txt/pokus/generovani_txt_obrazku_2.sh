#!/usr/bin/bash

: '
# ImageMagick pixel enumeration: 25,25,65535,srgb
0,0: (0,0,0)  #000000  black
1,0: (65535,65535,65535)  #FFFFFF  white
'

echo "# ImageMagick pixel enumeration: 25,25,65535,srgb"

for x in {0..24}; do # podelne radku
#echo $x

for y in {0..24}; do # svisle sloupcu
#echo $y

echo $x","$y": (0,0,0)  #000000  black"
echo $x","$y": (65535,65535,65535)  #FFFFFF  white"

done
#y
done
#x


