#!/data/data/com.termux/files/usr/bin/bash
if [ -z "$1" ]
then
h=${0##*/}
echo $h" archiv_zip_v6_name.zip"
exit 0
fi

unzip -l $1 | head -n 12

