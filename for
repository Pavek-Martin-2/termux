#!/data/data/com.termux/files/usr/bin/bash

for i in {1..16}
do
echo $i
echo "2 ^ $i" | bc
echo
done
