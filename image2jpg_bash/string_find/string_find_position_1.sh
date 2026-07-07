#!/usr/bin/bash

# https://stackoverflow.com/questions/5031764/position-of-a-string-within-a-string-using-linux-shell-script

file="abcde.jpg"

rozdelovac="."

d_file=${#file}

echo $file
echo "0123456789"
echo $d_file

strindex() {
  x="${1%%"$2"*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

#strindex "$a" "$b"   # prints 4
nalezeno=$(strindex "$file" "$rozdelovac")   # prints 4

echo $nalezeno

file_name=${file:0:$nalezeno}
echo $file_name

file_pripona=${file:$nalezeno:d_file}
echo $file_pripona


