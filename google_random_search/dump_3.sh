#!/data/data/com.termux/files/usr/bin/bash

# Skript pro postupné volání curl s náhodným čekáním
for i in {1..100}; do
echo $i"/100"
    # Generování náhodné otázky (příklad: zde můžeš vložit vlastní seznam nebo generovat dynamicky)
    otazky=("Kdyby slunce zářilo zeleně místo žlutě, jak by to ovlivnilo přírodu"
            "Co kdyby lidé uměli komunikovat telepaticky"
            "Kdyby gravitace jednou denně na chvíli zmizela, co by se stalo"
            "Jak by vypadala planeta, kdyby místo moře byly tekuté kovy"
            "Co kdyby se rostliny pohybovaly stejně jako zvířata"
            "Jak by vypadal svět, kdyby každý měl schopnost vidět do budoucnosti"
            "Kdyby stromy dokázaly mluvit, jaké příběhy by nám vyprávěly"
            "Co kdyby počasí reagovalo na náladu lidí"
            "Kdyby lidé měli schopnost měnit svou velikost libovolně, jak by to ovlivnilo svět"
            "Jak by se změnila společnost, kdyby každý měl nekonečné množství času na všechno"
            # Pokračování seznamu až do 100...
    )

    # Výběr náhodné otázky
    otazka="${otazky[$RANDOM % ${#otazky[@]}]}"

    # Odeslání požadavku na Google
    curl "https://www.google.com/search?q=$(echo $otazka | sed 's/ /+/g')"

    # Náhodné čekání mezi 2 až 5 sekundami
    sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')
done

