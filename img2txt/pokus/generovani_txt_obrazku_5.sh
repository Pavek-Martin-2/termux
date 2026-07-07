#!/usr/bin/bash

: '
# ImageMagick pixel enumeration: 25,25,65535,srgb
0,0: (0,0,0)  #000000  black
1,0: (65535,65535,65535)  #FFFFFF  white
'

echo "# ImageMagick pixel enumeration: 20,30,65535,srgb"

for y in {0..29}; do # svisle sloupcu

for x in {0..19}; do # podelne radku


out_b=$x","$y": (0,0,0)  #000000  black"

out_w=$x","$y": (65535,65535,65535)  #FFFFFF  white"

#echo $out_w

# for aa in {0..10};do m=$(($aa%2)); echo $aa" "$m;done

mx=$(($x%2))

my=$(($y%2))

: '
-eq ==
-ne !=
-lt <
-gt >
-le <=
-ge >=
'


if [[ $yy -eq 0 && $mx -eq 0 ]]
then
echo $out_b
else
echo $out_w
fi

: '
if [[ $yy -eq 1 && $mx -eq 1 ]]
then
echo $out_w
else
echo $out_b
fi

'

done
done

