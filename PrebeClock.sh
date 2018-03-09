
#!/bin/bash



clear
figlet -c "PrebeClock"

day=$(date +%A)
num=$(date +%d)
month=$(date +%B)
year=$(date +%g)
hour=$(date +%k)
minute=$(date +%M)


GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "$RED\n\t\t\tHoy es $day $num de $month del 20$year$NC"

figlet -c "_____"
figlet -c " $hour : $minute"
echo -e "\t\t\t==============================="
sleep 1






