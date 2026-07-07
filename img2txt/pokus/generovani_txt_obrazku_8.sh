#!/data/data/com.termux/files/usr/bin/bash

echo "# ImageMagick pixel enumeration: 300,300,65535,srgb"

for y in {0..299}; do # svisle sloupcu (kdyz chci treba 1000 tak dat 0..999)

for x in {0..299}; do # podelne radku

out_b=$x","$y": (0,0,0)  #000000  black"

out_w=$x","$y": (65535,65535,65535)  #FFFFFF  white"

: '
-eq ==
-ne !=
-lt <
-gt >
-le <=
-ge >=

x,y
0,0: (0,0,0) #000000 black
1,0: (65535,65535,65535) #FFFFFF white

0,1: 65535,65535,65535) #FFFFFF white
1,1: (0,0,0) #000000 black
00
01
10
11
'

my=$(($y%2))
mx=$(($x%2))
#echo $mx" "$my" <<<"

if [[ $mx -eq 0 && $my -eq 0 ]]
then
echo $out_b
fi


if [[ $mx -eq 1 && $my -eq 0 ]]
then
echo $out_w
fi


if [[ $mx -eq 0 && $my -eq 1 ]]
then
echo $out_w
fi


if [[ $mx -eq 1 && $my -eq 1 ]]
then
echo $out_b
fi

done
done


# sudo apt-get install imagemagic

# ./generovani_txt_obrazku_8.sh > /home/pi/r/out.txt
# ./generovani_txt_obrazku_8.sh > out.txt && convert out.txt out.bmp

