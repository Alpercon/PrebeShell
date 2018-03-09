#!/bin/bash
clear

figlet -c "Bienvenido al juego de memoria"
echo "Instrucciones:"
echo "Se mostraran numeros al azar despues tu tendras que poner el conjunto de numeros mostrados"

BLUE='\033[1;34m'
RED='\033[1;31m'
GREEN='\033[1;32m'

numeros1=(3 54)
numeros2=(56 78 7)
numeros3=(65 8 5 65)
numeros4=(43 98 90 32 54)
numeros5=(76 56 98 34 90 63)
read -p "Presiona enter cuando estes listo " S
clear
for i in ${numeros1[@]}
do
	clear
	figlet -c $i
	sleep 2
	clear
done
read -p "> " n
if [[ "$n" == "3 54" ]]; then
	echo -e "${GREEN}pasaste al nivel 2"
	sleep 2
	else
		echo "Lo sentimos has perdido"
		echo "nivel1"
		exit 0;
	fi


for i in ${numeros2[@]}
do
	clear
	figlet -c $i
	sleep 2
	clear
done
read -p "> " n
if [[ "$n" == "56 78 7" ]]; then
	echo -e "${BLUE}pasaste al nivel 3"
	sleep 2
	else
		echo "Lo sentimos has perdido"
		echo "nivel2"
		exit 0;
	fi
for i in ${numeros3[@]}
do
	clear
	figlet -c $i
	sleep 1
	clear
done
read -p "> " n
if [[ "$n" == "65 8 5 65" ]]; then
	echo -e "${RED}pasaste al nivel 4"
	sleep 2
	else
		echo "Lo sentimos has perdido"
		echo "nivel3"
		exit 0;
	fi
for i in ${numeros4[@]}
do
	clear
	figlet -c $i
	sleep 1
	clear
done
read -p "> " n
if [[ "$n" == "43 98 90 32 54" ]]; then
	echo -e "${GREEN}pasaste al nivel 5"
	sleep 2
	else
		echo "Lo sentimos has perdido"
		echo "nivel4"
		exit 0;
	fi
for i in ${numeros5[@]}
do
	clear
	figlet -c $i
	sleep 1
	clear
done
read -p "> " n
if [[ "$n" == "76 56 98 34 90 63" ]]; then
	echo -e "${BLUE}*********************************************************************************************"
	figlet -c  "Felicidades has ganado el juego"
	read -p "               ****************************************************" fin
	else
		echo "Lo sentimos has perdido"
		echo "nivel5"
		exit 0;
	fi
