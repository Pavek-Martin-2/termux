#!/data/data/com.termux/files/usr/bin/bash

for i in {1..3}; do
for y in {1..3}; do
for z in {1..3}; do



if [[ "$i" -ne "$y" && "$i" -ne "$z" && "$y" -ne "$z" ]]
then
echo "o"$i"o"$y
fi


done
done
done
