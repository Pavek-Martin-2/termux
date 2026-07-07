clear

pole_urls=(
"https://www.facebook.com/dagmar.havlov/"
"https://www.facebook.com/prezidentpavel/"
"https://www.facebook.com/evapavlova.oficialni/"
"https://www.facebook.com/luciebila/"
"https://www.facebook.com/Gameballcz/"
"https://www.facebook.com/zcaputova/"
"https://www.facebook.com/marketa.pekarova.adamova.top09/"
"https://www.facebook.com/top09cz/"
"https://www.facebook.com/p/Vladim%C3%ADra-Mu%C5%BE%C3%ADkov%C3%A1-100009406632859/"
"https://www.facebook.com/hana.pilecka/"
"https://cs-cz.facebook.com/marketa.maskova.73/"
"https://www.facebook.com/havelztopky/"
"https://www.facebook.com/vlvalek/"
)

celkem_urls=${#pole_urls[@]}
delka_urls=celkem_urls
(( delka_urls-- ))
echo "celkem "$celkem_urls" url"

#cmd="/home/pi/c/Program Files/Mozilla Firefox\firefox.exe "
#cmd="/home/pi/c/Program Files/Mozilla Firefox\firefox.exe "
cmd='"C:\Program Files\Mozilla Firefox\firefox.exe" '
#cmd="firefox "

for (( i  = 0; i <= $delka_urls; i++))
do
#echo $i

cmd+='"'

r=${pole_urls[$i]}
cmd+=$r
echo $i" "$r

cmd+='"  '

if [[ $i < $delka_urls ]]
then
cmd+=" "
fi

done

#cmd+="<"
# ^ kontrola konce cmd

echo $cmd
echo "pause"
# sleep 5
# eval $cmd

