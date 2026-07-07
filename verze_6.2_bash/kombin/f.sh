#!/data/data/com.termux/files/usr/bin/lua

d_arg=#arg
--print(d_arg)
--a 97 - z 122

for aa=97,97+d_arg-1 do

print("for "..string.char(aa).."=1,"..d_arg.." do")
end


o="print("

for bb=97,97+d_arg-1 do

if bb == 97 then
o=o..string.char(bb)
else
o=o..".."..string.char(bb)
end


end
o=o..")"

print(o)


for cc=97,97+d_arg-1 do
print("end")
end


