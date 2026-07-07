#!/data/data/com.termux/files/usr/bin/bc -q

define factorial (x) {
if (x <= 1) return (1);
return (factorial(x-1) * x);
}

print "vypocet nCr\n";

print "celkovy pocet ? "; n = read()
print "kolik z celkoveho poctu ? "; r = read()

scale=0

out=(factorial (n)) / ((factorial (r)) * (factorial (n-r)))

print out
print "\n"
#print "\n"

#print lenght=out
#print "\n"
quit

