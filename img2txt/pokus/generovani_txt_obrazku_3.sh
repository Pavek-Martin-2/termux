#!/usr/bin/bash

: '
# ImageMagick pixel enumeration: 25,25,65535,srgb
0,0: (0,0,0)  #000000  black
1,0: (65535,65535,65535)  #FFFFFF  white
'

echo "# ImageMagick pixel enumeration: 30,20,65535,srgb"

for x in {0..19}; do # podelne radku
#echo $x

for y in {0..29}; do # svisle sloupcu
#echo $y

out_b=$y","$x": (0,0,0)  #000000  black"

out_w=$y","$x": (65535,65535,65535)  #FFFFFF  white"

#echo $out_w


# for aa in {0..10};do m=$(($aa%2)); echo $aa" "$m;done

m=$(($y%2))

if [[ $m -eq 0 ]]
then
echo $out_b
else
echo $out_w
fi



done
done





echo $out_b

echo
echo $out_w


