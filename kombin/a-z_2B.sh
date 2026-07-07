#!/data/data/com.termux/files/usr/bin/bash

p=1

# Projděte všechna písmena od 'a' do 'z' a od 'A' do 'Z'
for first in {a..z} {A..Z}; do
  for second in {a..z} {A..Z}; do
    for third in {a..z} {A..Z}; do
      # Sestavte a vypište kombinaci
      echo "$p $first$second$third"
      ((p++))
    done
  done
done
