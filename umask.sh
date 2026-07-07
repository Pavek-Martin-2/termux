#!/data/data/com.termux/files/usr/bin/bash
clear
echo "aktualni umask = $(umask) default"
umask -p
echo "umask $(umask) prava = $(umask -S)"
echo
touch 0077_umask

umask 0022
echo "zmeneno na umask = $(umask)"
umask -p
echo "umask $(umask) prava = $(umask -S)"
touch 0022_umask

umask 0077
#default
echo "ukazka souboru vytvorenejch"
ls -lh 0022_umask 0077_umask
rm  0077_umask 0022_umask

