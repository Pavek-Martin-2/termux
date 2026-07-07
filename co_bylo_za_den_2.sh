#! /data/data/com.termux/files/usr/bin/bash
if [ -z "$3" ]
then
echo "co_bylo_za_den dd mm yyyy"
echo "co_bylo_za_den 16 12 2024"
exit 1
fi

d_1=${#1}
#echo $d_1

if [ "$d_1" -eq "1" ]; then
#echo "jedna"
den=" "$1" "
else
#echo "dve"
den=$1
fi

#echo ">"$den"<"
echo "Mo Tu We Th Fr Sa Su"
echo "Po Ut St Ct Pa So Ne"
#echo ""
cal -m -v $2 $3 | grep "$den" | cut -c -2
#den_eng=$(cal $2 $3 | grep $den | cut -c -2)
#den_eng=$(cal $2 $3 | grep $den)

#echo $den_eng"<<"

exit 1

if [ "$den_eng" == "Mo" ]; then
echo "Pondeli"
elif [ "$den_eng" == "Tu" ]; then
echo "Utery"
elif [ "$den_eng" == "We" ]; then
echo "Streda"
elif [ "$den_eng" == "Th" ]; then
echo "Ctrvtek"
elif [ "$den_eng" == "Fr" ]; then
echo "Patek"
elif [ "$den_eng" == "Sa" ]; then
echo "Sobota"
elif [ "$den_eng" == "Su" ]; then
echo "Nedele"
else
echo "chyba"
fi

# takto testovani programu
#for den in {1..31};do echo $den;./co_bylo_za_den_2.sh $den 1 2025;done > leden_2025.txt
# a pak to porovnat z papirovim kalendarem apod.

