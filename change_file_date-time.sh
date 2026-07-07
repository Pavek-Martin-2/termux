#!/data/data/com.termux/files/usr/bin/bash
clear

touch test-file.txt
ls -lh test-file.txt

touch -t 202212302257 test-file.txt
#        YYYYMMDDhhmm
ls -lh test-file.txt
cat $0

