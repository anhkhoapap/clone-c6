#!/bin/bash

csv_path="./arrays_table.csv"

c0=($(cut -d "," -f 1 $csv_path))
c1=($(cut -d "," -f 2 $csv_path))
c2=($(cut -d "," -f 3 $csv_path))

echo "print the first column"
echo "${c0[@]}"

lines=$(cat arrays_table.csv | wc -l)

c3=("column_3") 

for(( i=1; i<lines; i++)); do
    c3[$i] =$((c2[$i] - c1[$i]))
done

echo "${c3[@]}"
