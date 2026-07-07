#!/data/data/com.termux/files/usr/bin/bash

poc=1

# Projděte všechna písmena od 'a' do 'z'
for first in {a..z}; do
  for second in {a..z}; do
    for third in {a..z}; do
      # Sestavte a vypište kombinaci
      echo "$poc $first$second$third"
      (( poc++ ))
    done
  done
done
