#!/bin/bash

today=$(date +"%d-%m-%y")
weather_report=raw_data_$today.txt

curl "wttr.in" > $weather_report

grep °C $weather_report > temperatures.txt

morning_tmp=$(head -2 temperatures.txt | tail -1 | tr -s " " | xargs | cut -d "C" -f1 | rev | cut -d " " -f2 | rev)

noon_tmp=$(head -2 temperatures.txt | tail -1 | tr -s " " | xargs | cut -d "C" -f2 | rev | cut -d " " -f2 | rev)

evening_tmp=$(head -2 temperatures.txt | tail -1 | tr -s " " | xargs | cut -d "C" -f3 | rev | cut -d " " -f2 | rev)

night_tmp=$(head -2 temperatures.txt | tail -1 | tr -s " " | xargs | cut -d "C" -f4 | rev | cut -d " " -f2 | rev)

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
hour=$(date +%H)

echo -e "$year\t$month\t$day\t$hour\t$morning_tmp\t\t$noon_tmp\t\t$evening_tmp\t\t$night_tmp" >> rx_poc.log

