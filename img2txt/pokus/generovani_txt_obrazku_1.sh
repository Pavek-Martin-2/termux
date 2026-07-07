#!/usr/bin/bash
clear

: '

# ImageMagick pixel enumeration: 25,25,65535,srgb
0,0: (0,0,0)  #000000  black
1,0: (65535,65535,65535)  #FFFFFF  white
'

xx=99
yy=149 # pokud ma byt treba 150 tak dat 149 a na zacatku musi bit nula

echo "# ImageMagick pixel enumeration: "$xx","$yy",65535,srgb"


for x in {0..xx}; do
#echo $x

for y in {0..yy}; do
#echo $y

echo $x","$y":"



done
#y
done
#x


