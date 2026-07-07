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
            "Co kdyby sníh byl teplý místo studeného"
            "Jak by vypadala města, kdyby budovy rostly jako rostliny"
            "Kdyby hvězdy zářily různými barvami, jak by to změnilo oblohu"
            "Co kdyby vzduch měl svou vlastní barvu"
            "Kdyby zrcadla ukazovala alternativní verze nás samotných"
            "Jak by se změnila komunikace, kdyby místo slov lidé používali melodie"
            "Co kdyby existovala technologie, která by umožňovala cestovat mezi sny"
            "Kdyby každý měl svůj vlastní ostrov, jak by vypadala planeta"
            "Jak by se změnila doprava, kdyby auta mohla jezdit po vodě"
            "Co kdyby lidé nikdy nemuseli spát"
            "Kdyby vesmírné lodě byly tak běžné jako auta, kam by lidé cestovali"
            "Jak by se změnila historie, kdyby dinosauři nikdy nevyhynuli"
            "Co kdyby se všechny sny objevily na obloze jako obrazy"
            "Jak by vypadala planeta, kdyby měsíc svítil stejně jasně jako slunce"
            "Kdyby knihy samy přidávaly nové kapitoly podle toho, kdo je čte"
            "Co kdyby rostliny měnily své barvy podle hudby"
            "Jak by vypadal den, kdyby všechny barvy zmizely a zůstala jen černá a bílá"
            "Kdyby počasí bylo ovládáno myšlenkami lidí"
            "Co kdyby lidé mohli dýchat pod vodou stejně snadno jako na souši"
            # Až do počtu 100...
    )

    # Výběr náhodné otázky
    otazka="${otazky[$RANDOM % ${#otazky[@]}]}"

    # Odeslání požadavku na Google
    curl "https://www.google.com/search?q=$(echo $otazka | sed 's/ /+/g')"

    # Náhodné čekání mezi 2 až 5 sekundami
    sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')
done

