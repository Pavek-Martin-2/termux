#!/data/data/com.termux/files/usr/bin/bash

#Bash script to find check whether a number is prime or not

n=$1

for((i=2; i<=n/2; i++))
do
  if [ $((n%i)) -eq 0 ]
  then
    echo "$n is not a prime number."
    exit
  fi
done
echo "$n is a prime number."

