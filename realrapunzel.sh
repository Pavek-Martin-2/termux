#!/data/data/com.termux/files/usr/bin/bash
clear

url="https://youtube.com/@RealRapunzels"
adresar="realrapunzel/"

cesta="~/youtube_videa/"

cmd_2="mkdir "$cesta$adresar
echo $cmd_2
eval $cmd_2
sleep 3


cmd_1="rm -v "$cesta$adresar"*.part"
echo $cmd_1
eval $cmd_1

pokracovat=$(ls -lh ~/youtube_videa/$adresar/ | wc -l)


if [ "$1" == "k" ]
then
echo "kontrola"
sleep 3
# projede vsechno jeste jednou pro kontrolu
pokracovat=1
fi

# pokracovat=$((pokracovat + 100))
# zacalo dochazet misto na sd karte, cili prekopirovat jinam a upravi pocet co uz mam

echo $pokracovat

yt-dlp --no-colors --playlist-start $pokracovat -c -nc -f 'best[ext=mp4]' -o ~/storage/external-1/youtube_videa/$adresar"%(title)s.%(ext)s" $url

#yt-dlp --no-colors --playlist-start $pokracovat -c -nc -f 'worst[ext=mp4]' -o ~/storage/external-1/youtube_videa/$adresar"%(title)s.%(ext)s" $url

#yt-dlp --no-colors --playlist-start 35 -c -nc -f 'best[ext=mp4]' -o ~/storage/external-1/youtube_videa/"retro_all/%(title)s.%(ext)s" $url


