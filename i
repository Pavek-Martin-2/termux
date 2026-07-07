#!/data/data/com.termux/files/usr/bin/bash

if [ -z "$1" ]
then
h=${0##*/}
echo $h" instagram url"
exit 1
fi

url=$1
echo $url

stamp=$(date +_%s)
echo $stamp

mkdir -p ~/storage/external-1/youtube_videa/instagram_videa

#yt-dlp --no-colors -c -nc -f 'worst[ext=mp4]' -o ~/storage/external-1/youtube_videa/instagram_videa/"%(title)s$stamp.%(ext)s" $url
yt-dlp --no-colors -c -nc -f 'worst[ext=mp4]' -o ~/storage/external-1/youtube_videa/instagram_videa/"%(title)s$stamp.%(ext)s" $url
