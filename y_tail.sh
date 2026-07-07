#!/data/data/com.termux/files/usr/bin/bash
d=$(cat $0 | wc -l); d=$((d-3)); echo $d
for ((x=d; x>=1; x--));do y $(tail -n $x $0 | head -n 1); done; exit 1
