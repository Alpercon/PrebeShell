#!/bin/bash


clear
pokar[0]="8"
pokar[1]="J"
pokar[2]="Q"
pokar[3]="K"
pokar[4]="A"

let array[0]=0
let array[1]=0
let array[2]=0 
let array[3]=0 
let array[4]=0 

Player1=()
Player2=()

for i in 0 1 2 3 4; do
	Player1[i]=${pokar[$(($RANDOM%4))]}
done

for i in 0 1 2 3 4; do
	Player2[i]=${pokar[$(($RANDOM%4))]}
done
P='\033[1;37m'
trampa="cadena"
BLUE='\033[1;34m'
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m'
Y='\033[1;33m'

while :
do


figlet -c "Cubilete!!"

echo -e "\t${RED}Bienvenido!!\n\t1)Jugar\n\t2)Salir${NC}"
read opcion

case $opcion in
	
	1)
		clear
		figlet -c "Cubilete!!"
		echo -e "\t${GREEN}°Introduce el nombre del Jugador 1:$NC"
		read p1n
		clear
		figlet -c "Cubilete!!"
		echo -e "\t${GREEN}°Introduce el nombre del Jugador 2:$NC"
		read p2n
		clear
		echo -e "${P}\n\n\n\t\t\tTirando.$NC"
		sleep .3 
		clear
		echo -e "${P}\n\n\n\t\t\tTirando..$NC"
		sleep .3
		clear
		echo -e "${P}\n\n\n\t\t\tTirando...$NC"
		sleep .3
		clear

######################################
#PARA JUGADOR 1

		for j in 0 1 2 3 4; do
			for i in 0 1 2 3 4; do
				if [ ${pokar[j]} = ${Player1[i]}  ];then
					let array[j]=${array[j]}+1
				fi
			done
		done

########################################

		for i in 0 1 2 3 4; do
			if [ ${array[i]} != 0 ];then

				let array[i]=${array[i]}-1
			fi
		done

		let sum_p1=0
		for i in 0 1 2 3 4; do
			let sum_p1=${array[i]}+$sum_p1
		done
########################################################
#PARA JUGADOR 1

		case $sum_p1 in
			0)
				res_p1="no obtuviste nada :("
				let resp1=0
				;;
			1)
				res_p1="obtuviste un par!"
				let resp1=1
				;;
			2)	
				if [ ${array[0]} == 2 ] || [ ${array[1]} == 2 ] || [ ${array[2]} == 2 ] || [ ${array[3]} == 2 ] || [ ${array[4]} == 2 ];then
					res_p1="obtuviste una tercia!"
					let resp1=3
				else
					res_p1="obtuviste dos pares!"
					let resp1=2
				fi
				;;
			3)
				if [ ${array[0]} == 3 ] || [ ${array[1]} == 3 ] || [ ${array[2]} == 3 ] || [ ${array[3]} == 3 ] || [ ${array[4]} == 3 ];then
					res_p1="obtuviste un Poker!" 
					let resp1=5
				else
					res_p1="obtuviste un full!"
					let resp1=4
				fi
				;;
			4)
				res_p1="obtuviste una quintilla! 0:"
				let resp1=6
				;;	
	
		esac

		

##############################################################
#PARA JUGADOR 2

		let array[0]=0
		let array[1]=0
		let array[2]=0 
		let array[3]=0 
		let array[4]=0 

		for j in 0 1 2 3 4; do
			for i in 0 1 2 3 4; do
				if [ ${pokar[j]} = ${Player2[i]}  ];then
					let array[j]=${array[j]}+1
				fi
			done
		done


		for i in 0 1 2 3 4; do
			if [ ${array[i]} != 0 ];then

				let array[i]=${array[i]}-1
			fi
		done

		let sum_p2=0
		for i in 0 1 2 3 4; do
			let sum_p2=${array[i]}+$sum_p2
		done

		case $sum_p2 in
			0)
				res_p2="no obtuviste nada :("
				let resp2=0
				;;
			1)
				res_p2="obtuviste un par!"
				let resp2=1
				;;
			2)	
				if [ ${array[0]} == 2 ] || [ ${array[1]} == 2 ] || [ ${array[2]} == 2 ] || [ ${array[3]} == 2 ] || [ ${array[4]} == 2 ];then
					res_p2="obtuviste una tercia!"
					let resp2=3
				else
					res_p2="obtuviste dos pares!"
					let resp2=2
				fi
				;;
			3)
				if [ ${array[0]} == 3 ] || [ ${array[1]} == 3 ] || [ ${array[2]} == 3 ] || [ ${array[3]} == 3 ] || [ ${array[4]} == 3 ];then
					res_p2="obtuviste un Poker!" 
					let resp2=5
				else
					res_p2="obtuviste un full!"
					let resp2=4
				fi
				;;
			4)
				res_p2="obtuviste una quintilla! 0:"
				let resp2=6
				;;	
	
		esac
		
		echo -e "\t\t\t${Y}$p1n tus dados son:$NC"
		echo -e "\t\t\t${Player1[*]}"  
		echo -e "\t\t\t${GREEN}$res_p1$NC\n"
		echo -e "\t\t\t${Y}$p2n los tuyos son:$NC"
		echo -e "\t\t\t${Player2[*]}"
		echo -e "\t\t\t${GREEN}$res_p2$NC"
		
#####################

		if [ $resp1 -eq $resp2 ]; then
			figlet -c "Empate :v"
		else
			if [ $resp1 -gt $resp2 ]; then
				figlet -c "$p1n Gana!"
			else
				figlet -c "$p2n Gana!"
			fi

		fi
		echo -e "\n${BLUE}Continuar...$NC"
		read
		clear
		;;

	2)
		clear
		exit
		;;

	*)
		clear		
		echo -e "\e[1;31mIngresa una opcion valida\e[0m"
		
		;;
	esac
done
