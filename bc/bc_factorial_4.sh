#!/data/data/com.termux/files/usr/bin/bc -q

define f_iter (x) {
for (r=1; x>1; x--) {r *=x}
return r
}

print "factorial: ? "; f = read()
f_iter(f)
quit
