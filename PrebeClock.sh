#!/bin/bash


while : 
do

clear
figlet -c "PrebeClock"

day=$(date +%A)
num=$(date +%d)
month=$(date +%B)
year=$(date +%g)
hour=$(date +%k)
minute=$(date +%M)
sec=$(date +%S)

GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "$RED\n\t\t\tHoy es $day $num de $month del 20$year$NC$GREEN\n\t\t\tCtrl+C para terminar$NC"

figlet -c "_________"
figlet -c " $hour : $minute : $sec "
echo -e "\t    ======================================================="
sleep 1

done





