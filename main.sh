#!/bin/bash
cat config > sleeptime
while true
do
curl  -s  'http://meteo.by/' > pogoda
grep -m 1 '+4' pogoda > temp
echo  $(sed 's/[^\-\+0-9]//g' temp)
sleep sleeptime
done