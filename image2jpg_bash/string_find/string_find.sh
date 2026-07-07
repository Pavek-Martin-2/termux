#!/usr/bin/bash

url="https://www.instagram.com/dashik_gubanova/reel/CwDHPdYKd-m/"

h_instagram="www.inXstagram.com"


if [[ $url == *$h_instagram* ]]; then
# napise jenom jestli obsahuje nebo neobshuje ale pri pripadnem nalezu uz nepise na jaky pozici nasel
echo "obsahuje retezec "$h_instagram
else
echo "neobsahuje retezec "$h_instagram
fi
