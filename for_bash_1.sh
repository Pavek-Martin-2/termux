#!/data/data/com.termux/files/usr/bin/bash

xx=10

#for (( x=0; x<= xx; x++)); do
#                ^ funguje taky
for (( x=0; x<= $xx; x++)); do
echo $x
done

