#!/usr/bin/bash

file="abcde.jpeg"
rozdelovac="."

d_file=${#file}

echo $file
echo "012345678"
echo $d_file

prefix=${file%%$rozdelovac*}
index=${#prefix}

if [[ index -ne ${#file} ]]; then
nalezeno=$index
#echo $index
#else
#echo "nenalezeno"
#exit 1
fi

echo $nalezeno

file_name=${file:0:$nalezeno}
echo $file_name

file_pripona=${file:$nalezeno:d_file}
echo $file_pripona

