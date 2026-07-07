#!/data/data/com.termux/files/usr/bin/bash
if [ -z "$1" ]
then
h=${0##*/}
echo $h" 30720672"
exit 1
fi

kod=$1

url="https://sdilej.cz/free/index.php?id="

cmd="termux-open-url "
cmd+=$url
cmd+=$kod

echo $cmd
eval $cmd
