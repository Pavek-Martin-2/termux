#!/data/data/com.termux/files/usr/bin/bash
bc -q << EOF
scale=2

fah=$1

print "\nCovert Fahrenheit degress to Celsius\n\n"
#print "Enter temperature in Fahrenheit: "; fah = read()
print "\n"
print "The equivalent Temperature in Celsius is: "

# (fah - 32.0) * 5.0 / 9.0 jenom vypise vysledek na monitor
out = (fah - 32.0) * 5.0 / 9.0
print out
print "\n"

quit;
EOF

