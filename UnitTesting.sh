#! /bin/bash

in1="50"
in2="dollars"
in3="yen"
in4="DOLLARS"
in5="pouNdS"
in6="Euros"
in7="10"

ex1=$'50.0 Dollars = 37 Pounds\n50.0 Dollars = 44 Euros\nThank you for using the converter.'
ex2="Please provide input in the form of: value currency"
ex3="Please use one of the following currencies in plural form: dollars, pounds, euros (Case-Sensitive)"
ex4=$'50.0 Pounds = 68 Dollars\n50.0 Pounds = 59.5 Euros\nThank you for using the converter.'
ex5=$'50.0 Euros = 56.5 Dollars\n50.0 Euros = 42 Pounds\nThank you for using the converter.'
ex6=$'10.0 Dollars = 7.4 Pounds\n10.0 Dollars = 8.8 Euros\nThank you for using the converter.'
ex7=$'10.0 Pounds = 13.6 Dollars\n10.0 Pounds = 11.9 Euros\nThank you for using the converter.'
ex8=$'10.0 Euros = 11.3 Dollars\n10.0 Euros = 8.4 Pounds\nThank you for using the converter.'

out1="$(java CurrencyConverter $in1 $in2)"
out2="$(java CurrencyConverter)"
out3="$(java CurrencyConverter $in2 $in1)"
out4="$(java CurrencyConverter $in1 $in3)"
out5="$(java CurrencyConverter $in1 $in4)"
out6="$(java CurrencyConverter $in1 $in5)"
out7="$(java CurrencyConverter $in1 $in6)"
out8="$(java CurrencyConverter $in7 $in4)"
out9="$(java CurrencyConverter $in7 $in5)"
out10="$(java CurrencyConverter $in7 $in6)"

echo "$ex1"
echo "$out1"

# Testing the convertor with normal values and correct format of the arguments

if [ "$ex1" = "$out1" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unuccessfully
        exit 0
fi

# Testing the convertor with no arguments

if [ "$ex2" = "$out2" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

# Testing the convertor with swapped arguments

if [ "$ex2" = "$out3" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

# Testing the convertor with a value and unsupported currency

if [ "$ex3" = "$out4" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

#Testing the convertor with all upper case letters of the currency

if [ "$ex1" = "$out5" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

#Testing the convertor with mixed case letter of the currency

if [ "$ex4" = "$out6" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

#Testing the convertor with Capitilised letter of the currency

if [ "$ex5" = "$out7" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

#Testing the convertor for correct conversion in Dollars

if [ "$ex6" = "$out8" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

#Testing the convertor for correct conversion in Pounds

if [ "$ex7" = "$out9" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

#Testing the convertor for correct conversion in Euros

if [ "$ex8" = "$out10" ];
then
        echo Test Passed
else
        echo Test Failed
        echo Testing Ended Unsuccessfully
        exit 0
fi

echo Testing Ended Successfully


