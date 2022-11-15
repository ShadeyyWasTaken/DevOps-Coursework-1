#! /bin/bash

in1="50 pounds"
ex1=$'50.0 Dollars = 37 Pounds\n50.0 Dollars = 44 Euros'
out1="$(java -cp CurrencyConverter.java $in1)"

echo "$in1"
echo "$ex1"
echo "$out1"
