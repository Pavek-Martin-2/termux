#!/data/data/com.termux/files/usr/bin/bash

p=1
# Projděte všechna písmena od 'a' do 'z', 'A' do 'Z' a číslice '0' až '9'
for first in {a..z} {A..Z} {0..9}; do
  for second in {a..z} {A..Z} {0..9}; do
    for third in {a..z} {A..Z} {0..9}; do
      # Sestavte a vypište kombinaci
      echo "$p $first$second$third"
      ((p++))
    done
  done
done
