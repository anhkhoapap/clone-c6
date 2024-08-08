#!/bin/bash

echo -n "Enter first numer: "
read n1
echo -n "Enter second number: "
read n2

sum=$(($n1+$n2))
prod=$(($n1*$n2))

echo "Sum: $sum Product: $prod"

if [ $sum -lt $prod ]
then
    echo "Sum is less than Prod"
elif [ $sum -gt $prod ]
then
    echo "Sum is greater than Prod"
else
    echo "Sum is equal Prod"
fi

