#!/data/data/com.termux/files/usr/bin/bash
if [ -z "$1" ]
then
echo $0" 100000 6 "
echo $0" 100000 6 > output 100k6.txt"
exit 1
fi

bc -q << EOF

define factorial (x) {
if (x <= 1) return (1);
return (factorial(x-1) * x);
}

scale=0

n=$1;
r=$2;

out=(factorial (n)) / ((factorial (r)) * (factorial (n-r)))

print out
print "\n"

quit;
EOF
