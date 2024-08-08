#!/bin/bash
echo 'Give me your answer'
echo -n "\"y\" for YES and \"n\" for NO: "
read response

if [ "$response" == "y" ]
then
    echo "YES"
elif [ "$response" == "n" ]
then
    echo "NO"
else
    echo "Incorrect format"
fi
