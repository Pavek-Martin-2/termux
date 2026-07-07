#!/data/data/com.termux/files/usr/bin/bash

if [ -z "$1" ]
then
echo "help"
h=${0:36:${#0}}
echo $h" nazev_videa_bez_pripony https://youtu.be/2PNY4RxISKw &"
exit 1
fi

url=$2

sub="shorts"
if [[ "$2" == *"$sub"* ]]
then
#echo "syring obsahuje sub"
#uu="https://youtu.be/"
uu="https://www.youtube.com/watch?v="
#https://youtube.com/shorts/I0mX7kjnns0?feature=share
kod=${2:27:11}
url=$uu$kod
fi

echo $url


c="/data/data/com.termux/files/home/storage/external-1/youtube_videa/"
u=$(youtubedr url $url) && wget -c -O $c$1".mp4" $u
#u=$(youtubedr url $2) && wget -c -nc -O $c$1".mp4" $u
#u=$(youtubedr url $2) && axel -n 2 -c -o $c$1".mp4" $u
# https://stackoverflow.com/questions/22114610/downloading-a-file-with-wget-using-multiple-connections
rm -f ~/wget-log*
ls ~/youtube_videa
