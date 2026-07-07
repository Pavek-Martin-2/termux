#!/data/data/com.termux/files/usr/bin/bash

counter=1
for file in obraz.png; do
  new=$(printf "obraz_%02d.png" "$counter")
  mv "$file" "$new"
  ((counter++))
done
