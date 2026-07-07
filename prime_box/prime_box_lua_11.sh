#!/data/data/com.termux/files/usr/bin/lua

--[[

sudo apt-get install imegamagick
./prime_box_11.sh > output-255x1750.txt %% convert output-255x1750.txt output-255x1750.bmp

]]--

-- puvodni program pro zx-ko mel raster ( x = 1-255 , y = 1-175 )
xx = 510 -- ( xx nechat puvodni )
yy = 1020 -- ( 175 puvodni osa y zx-ka kvuli zachovani rastru a * nasobky )



print("# ImageMagick pixel enumeration: "..xx..","..yy..",65535,srgb")
-- 65535 = 16 bitova barevna hloubka (asi zbytecny v tomhle pripade)
print("0,0: (65535,65535,65535) #FFFFFF white")
print("1,0: (65535,65535,65535) #FFFFFF white")


n=1

for y = 1 , yy do
for x = 1 , xx do

r=1 -- musi mej zde ( jinak hazi nil pri n=1,2 )

for i = 2 , (n/2)  do

if (n % i == 0) then
r=0
end
end


if (n >= 3 and r == 1 ) then
--print("n="..n.." x="..x.." y="..y.." xx="..xx.." yy="..yy)
print((x-1)..","..(y-1)..": (0,0,0) #000000 black # prime = "..n)
--[[ na konci radku prida jeste "n", program convert to snese v pohode bere to jako komentar
     na vystupu v *.bmp se to vubec neprojevi
     vse je tak prehledne ulozene v  *.txt na jednom miste, vysledek je pak treba
     2,0: (0,0,0) #000000 black # prime = 3 (radkuje od "0" tzn. pozice pixelu v *.8 bmp je 3,1 )
     x,y souradnice bodu + barva bila + prime = 3 
     co vic si jeste prat
     pozn. nektry editory grafiky umej ze kdyz se najede kurzorem na pixel
     tak nekde dole v pravim rohu ukazou souradnici bodu pozici x,y ktera je pak x-1, y-1
     dohledatelna v *.txt vystupu
]]--
end


if (n >= 3 and r == 0 ) then
--print("n="..n.." x="..x.." y="..y.." xx="..xx.." yy="..yy)
print((x-1)..","..(y-1)..": (65535,65535,65535)  #FFFFFF  white")
end


n=n+1
end
end

