#!/data/data/com.termux/files/usr/bin/bash
cp -v in.txt in_old.txt

nano in.txt
# bude editovat soubor in.txt
sleep 1

rm -f *.jpg
sleep 1

magick convert -pointsize 16 TEXT:in.txt out_1.jpg
magick convert -pointsize 18 TEXT:in.txt out_2.jpg
magick convert -pointsize 20 TEXT:in.txt out_3.jpg
magick convert -pointsize 22 TEXT:in.txt out_4.jpg
magick convert -pointsize 24 TEXT:in.txt out_5.jpg
magick convert -pointsize 26 TEXT:in.txt out_6.jpg
magick convert -pointsize 28 TEXT:in.txt out_7.jpg

in="in.txt"
out="out_8.jpg"
size="20"

fill="black"
#fill="blue"
background="white"

magick convert -pointsize $size -fill $fill -background $background TEXT:$in $out
magick convert -pointsize 22 -fill $fill -background $background TEXT:$in out_9.jpg
magick convert -pointsize 24 -fill $fill -background $background TEXT:$in out_10.jpg
magick convert -pointsize 26 -fill $fill -background $background TEXT:$in out_11.jpg
magick convert -pointsize 28 -fill $fill -background $background TEXT:$in out_12.jpg
magick convert -pointsize 30 -fill $fill -background $background TEXT:$in out_13.jpg
magick convert -pointsize 32 -fill $fill -background $background TEXT:$in out_14.jpg

sleep 1
mv -v *.jpg ~/downloads/
echo "hotovo"

