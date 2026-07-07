#!/usr/bin/bash

pripony_obrazku=(".png" ".tif" ".jpeg" ".pcx" ".bmp" ".gif" ".tiff" ".PNG" ".TIF" ".JPEG" ".PCX" ".BMP" ".GIF" ".TIFF")
d_pripony_obrazku=${#pripony_obrazku[@]}

renames=()
d_renames=0
pocitadlo=1
pocitadlo_renames=0
rozdelovac="."

for file in *; do
#proved_1=0

prefix=${file%%$rozdelovac*}
index=${#prefix}

if [[ index -ne ${#file} ]]; then
nalezeno_1=$index

#if [[ proved_1 -eq 1 ]]; then
d_file=${#file}
file_name=${file:0:$nalezeno_1}
file_pripona=${file:$nalezeno_1:d_file}
for (( aa = 0; aa < d_pripony_obrazku; aa++ )); do
if [[ $file_pripona = ${pripony_obrazku[$aa]} ]]; then
#d_pripona_pole_nalezeno=${#pripony_obrazku[$aa]}
((1+4))
#(( proved_1++ ))
#break
fi
done
#fi

#if [[ proved_1 -eq 2 ]]; then
#d_file_name=${#file_name}
#d_file_pripona=${#file_pripona}
#(( proved_1++ ))
#fi

#if [[ proved_1 -eq 3 ]]; then
# nasel v poly renames ?
nasel=0
for (( bb = 0; bb < ${#renames[@]}; bb++ )); do
if [[ $file_name = ${renames[$bb]} ]]; then
(( nasel++ ))
fi
done

if [[ pocitadlo -lt 10 ]]; then
pocitadlo_2="0"$pocitadlo
else
pocitadlo_2=$pocitadlo
fi

if [[ nasel -gt 0 ]]; then
echo $pocitadlo_2") "$file" --> "$file_name"("$nasel").jpg"
cmd_1="convert '"$file"' '"$file_name"("$nasel").jpg'"
else
echo $pocitadlo_2") "$file" --> "$file_name".jpg"
cmd_1="convert '"$file"' '"$file_name".jpg'"
fi

if [[ $1 = "-delete" ]]; then
cmd_1=$cmd_1" && rm -f '"$file"'"
fi

echo $cmd_1
#eval $cmd_1

((pocitadlo++))

# prida do pole renames prave pouzity file_name
renames[$pocitadlo_renames]=$file_name
((pocitadlo_renames++))
#fi

fi
#fi

done

