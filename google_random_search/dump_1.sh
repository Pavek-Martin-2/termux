#!/data/data/com.termux/files/usr/bin/bash

# Skript pro postupné volání curl s náhodným čekáním

curl "https://www.google.com/search?q=Kdyby+slunce+z%C3%A1%C5%99ilo+mod%C5%99e+m%C3%ADsto+%C5%BElut%C4%9B%2C+jak+by+to+ovlivnilo+p%C5%99%C3%ADrodu"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Co+kdyby+lid%C3%A9+m%C4%9Bli+schopnost+vid%C4%9Bt+zvuky+jako+barvy"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Kdyby+mo%C5%99e+byla+napln%C4%9Bn%C3%A1+jin%C3%BDmi+tekutinami+ne%C5%BE+vodou%2C+jak+by+vypadala+planeta"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Co+kdyby+stromy+mohly+sd%C3%ADlet+vzpom%C3%ADnky+s+t%C4%9Bmi%2C+kdo+se+jich+dotknou"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Kdyby+se+gravitace+chovala+jinak+na+r%C5%AFzn%C3%BDch+m%C3%ADstech%2C+jak+by+se+zm%C4%9Bnil+zp%C5%AFsob+pohybu"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Co+kdyby+ka%C5%BEd%C3%BD+mohl+ovl%C3%A1dat+%C4%8Das+jen+jednou+za+%C5%BEivot+a+rozhodnout+se%2C+jak+ho+pou%C5%BE%C3%ADt"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Kdyby+se+v%C5%A1echny+sny%2C+kter%C3%A9+lid%C3%A9+maj%C3%AD%2C+objevily+na+obloze+jako+obrazy"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Co+kdyby+lid%C3%A9+mohli+d%C3%BDchat+pod+vodou+stejn%C4%9B+snadno+jako+na+sou%C5%A1i"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Kdyby+existoval+sv%C4%9Bt%2C+kde+m%C3%ADsto+b%C4%9B%C5%BEn%C3%A9+komunikace+lid%C3%A9+mluvili+hudbou"  
sleep $(awk -v min=2 -v max=5 'BEGIN{srand(); print min+rand()*(max-min)}')  

curl "https://www.google.com/search?q=Co+kdyby+zrcadla+neodr%C3%A1%C5%BEela+realitu%2C+ale+alternativn%C3%AD+verze+n%C3%A1s+samotn%C3%BDch"  

