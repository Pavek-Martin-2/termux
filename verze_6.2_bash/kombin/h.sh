#!/data/data/com.termux/files/usr/bin/lua

d_arg=#arg
--print(d_arg)
--a 97 - z 122

print("t={}")

for aaa=1,d_arg do
print(string.char(aaa+96)..string.char(aaa+96).."=arg["..aaa.."]")
end

for aa=97,97+d_arg-1 do
print("for "..string.char(aa).."=1,"..d_arg.." do")
end

o="print("

for bb=1,d_arg do

if bb == 1 then
--o=o..string.char(bb)
o=o..arg[bb]
else
--o=o..".."..string.char(bb)
o=o..".."..arg[bb]
end

end
o=o..")"

print(o)

--print(arg[bb])
--end



for cc=1,d_arg do
print("end")
end


