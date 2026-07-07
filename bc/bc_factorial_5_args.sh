#!/data/data/com.termux/files/usr/bin/bash
bc -q << EOF

define f_iter (x) {
for (r=1; x>1; x--) {r *=x}
return r
}

f=$1

#print "factorial: ? "; f = read()
f_iter(f)
quit;
EOF
