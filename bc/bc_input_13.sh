#!/data/data/com.termux/files/usr/bin/bc
define factorial (x) {
if (x <= 1) return (1);
return (factorial(x-1) * x);
}
print "vypocet nCr\n";
scale=0
define ncr (n,r){
out=(factorial (n)) / ((factorial (r)) * (factorial (n-r)))
print out
}

/* for cyklus uz primo v bc */
for(r=1; r<=200; r=r+5){
print"200C",r," ",ncr(200,r); print"\n"
}
quit

