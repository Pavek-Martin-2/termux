#!/usr/bin/bash

convert AOS2.BMP AOS2.txt
convert AOS2.txt AOS2_2.bmp
sha1sum AOS2.BMP AOS2_2.bmp

convert images.png images.txt
convert images.txt images2.png
sha1sum images.png images2.png

sleep 5

cat AOS2.txt
