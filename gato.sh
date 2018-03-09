#!/bin/bash
##Falta el mostrar y las condiciones cuando no se da un numero en el rango 

fila1=(0 0 0 "|" 0 "x" 0 "|" 0 0 0)
fila2=("_" "_" "_" "|" "_" "_" "_" "|" "_" "_" "_")
fila3=(0 0 0 "|" 0 0 0 "|" 0 0 0)
fila4=("_" "_" "_" "|" "_" "_" "_" "|" "_" "_" "_")
fila5=(0 0 0 "|" 0 0 0 "|" 0 0 0)
##_____________________________________________________________________________________________
gato1=(0 0 0)
gato2=(0 0 0)
gato3=(0 0 0)
##_____________________________________________________________________________________________
function init
{
	echo "Bienvenido :) debe tener en cuenta que las coordenadas se basan en lo siguiente"
	echo "(1,1) | (1,2) | (1,3)"
	echo "______|_______|______"
	echo "(2,1) | (2,2) | (2,3)"
	echo "______|_______|______"
	echo "(3,1) | (3,2) | (3,3)"
    echo "      |       |      "
}
##_____________________________________________________________________________________________
function revisar
{
	n_usr=$2
	echo $n_usr
	##Horizontal
	usr=0
	for((number=1; number<4;number++))
	{
			usr=0
			case $number 
			in
				1)
					 for((y=0;y<3;y++))
					 {
						if [ $n_usr == "${gato1[$y]}" ]; then
							let usr=usr+1
						fi
					 }
					 if [ $usr -eq 3 ]; then
					 		clear 
							echo "Juego terminado"
							let fin=1
							return $fin
					 fi
					 ;;
				2) 
					 ##_________________________________
					 for((y=0;y<3;y++))
					 {
						if [ $n_usr == "${gato2[$y]}" ]; then
							let usr=usr+1
						fi
					 }
					 if [ $usr -eq 3 ]; then
							echo "Juego terminado"
							let fin=1
							return $fin
					 fi
					 ;;
					 ##_________________________________
				3) 
					 ##_________________________________
					 for((y=0;y<3;y++))
					 {
						if [ $n_usr == "${gato3[$y]}" ]; then
							let usr=usr+1
						fi
					 }
					 if [ $usr -eq 3 ]; then
							echo "Juego terminado"
							let fin=1
							return $fin
					 fi
					 ##_________________________________
					 ;;
				*)       
					 ##_________________________________
					 echo "fail"
					 ;;
					 ##_________________________________
			esac

	}
	echo $usr
	##Vertical
	for((number=1; number<4;number++))
	{
			usr=0
			case $number 
			in
				1) 
					 if [ $n_usr == "${gato1[0]}" ]; then
							let usr=usr+1
					 fi
					 if [ $n_usr == "${gato2[0]}" ]; then
							let usr=usr+1
					 fi
					 if [ $n_usr == "${gato3[0]}" ]; then
							let usr=usr+1
					 fi
					 if [ $usr -eq 3 ]; then
							echo "Juego terminado"
							let fin=1
							return $fin
					 fi
					 ;;
				2) 
					 ##_________________________________
					 if [ $n_usr == "${gato1[1]}" ]; then
							let usr=usr+1
					 fi
					 if [ $n_usr == "${gato2[1]}" ]; then
							let usr=usr+1
					 fi
					 if [ $n_usr == "${gato3[1]}" ]; then
							let usr=usr+1
					 fi
					 if [ $usr -eq 3 ]; then
							echo "Juego terminado"
							let fin=1
							return $fin
					 fi
					 ;;
					 ##_________________________________
				3) 
					 ##_________________________________
					 if [ $n_usr == "${gato1[2]}" ]; then
							let usr=usr+1
					 fi
					 if [ $n_usr == "${gato2[2]}" ]; then
							let usr=usr+1
					 fi
					 if [ $n_usr == "${gato3[2]}" ]; then
							let usr=usr+1
					 fi
					 if [ $usr -eq 3 ]; then
							echo "Juego terminado"
							let fin=1
							return $fin
					 fi
					 ##_________________________________
					 ;;
				*)       
					 ##_________________________________
					 echo "fail"
					 ;;
					 ##_________________________________
			esac

	}
	##Diagonal
	if [ $n_usr == "${gato1[0]}" ]; then
			let usr=usr+1
	fi
	if [ $n_usr == "${gato2[1]}" ]; then
			let usr=usr+1
	fi
	if [ $n_usr == "${gato3[3]}" ]; then
			let usr=usr+1
	fi
	if [ $usr -eq 3 ]; then
			echo "Juego terminado"
			let fin=1
			return $fin
	fi
	usr=0
	##____________________________________________________________
	if [ $n_usr == "${gato1[2]}" ]; then
			let usr=usr+1
	fi
	if [ $n_usr == "${gato2[1]}" ]; then
			let usr=usr+1
	fi
	if [ $n_usr == "${gato3[0]}" ]; then
			let usr=usr+1
	fi
	if [ $usr -eq 3 ]; then
			echo "Juego terminado"
			let fin=1
			return $fin
	fi

	 ##____________________________________________________________

}
##________________________Ya esta__________________________________
function nombres
{
	salir=0
	pokemonthink "Jugador 1: Ingresa tu nombre de usuario"
	read user1
	while [ $salir -eq 0 ]
	do
			pokemonthink "Jugador 2: Ingresa tu nombre de usuario"
			read user2
			if [ "$user1" != "$user2" ]; then 
	 				let salir=1
	 		else 
	 				clear 
	 				pokemonthink "Este nombre ya ha sido elegido, prueba otra vez"
	 				sleep 4
	 				clear
			fi
    done
}
##_________________________________________________________________
function mostrar
{
	echo ""
	echo ""
	echo -e "\e[31m${gato1[@]} \e[0m"
	echo -e "\e[31m${gato2[@]} \e[0m"
	echo -e "\e[31m${gato3[@]} \e[0m"
	##echo ${gato1[@]}
	##echo ${gato2[@]}
	##echo ${gato3[@]}
	
}
##_________________________________________________________________
function datos
{
	clear
	init
	read tmp
	clear
	nombres
	tiros=0
	fin=0
	##Poner el aleatorio
	clear
	while [ $fin -eq 0 ] && [ $tiros -lt 9 ]
	do
			echo $tiros
			fin_u=0
			while [ $fin_u -eq 0 ] && [ $tiros -lt 9 ]
			do
					pokemonthink "Turno $user1"
					echo -e "\e[36mRenglón: \e[0m"
					read r
					echo -e "\e[36mColumna: \e[0m"
					read c
					let c=c-1
					cero=0
		##__________________________________________________________
					case $r 
					in
						1)	 
					 			if [ $cero == "${gato1[$c]}" ] && [ $c -lt 4 ]; then
							  			gato1[$c]=$user1
							  			revisar echo $user1
							  			fin_u=1 
					 			fi
					 			;;
						2) 
								if [ $cero == "${gato2[$c]}" ] && [ $c -lt 4 ]; then
					 					gato2[$c]=$user1
					 					revisar echo $user1
					 					fin_u=1
					 			fi
					 			;;
						3) 
								if [ $cero == "${gato3[$c]}" ] && [ $c -lt 4 ]; then
					 					gato3[$c]=$user1
					 					revisar echo $user1
					 					fin_u=1
					 			fi
					 			;;
						*)       
					 			echo "Elige una opción válida"
					 			;;
					esac
			done
			let tiros=tiros+1
			fin_u=0
			mostrar
			sleep 2
			clear
		##__________________________________________________________
		    while [ $fin_u -eq 0 ] && [ $tiros -lt 9 ] && [ $fin -eq 0 ]
		    do
		    	    clear
					pokemonthink "Turno $user2"
					echo -e "\e[36mRenglón: \e[0m"
					read r
					##echo "Columna:"
					echo -e "\e[36mColumna: \e[0m"
					read c
					let c=c-1
					case $r 
					in
						1)	 
					 			if [ $cero == "${gato1[$c]}" ] && [ $c -lt 4 ]; then
							  			gato1[$c]=$user2
							  			revisar echo $user2
							  			fin_u=1 
					 			fi
					 			;;
						2) 
								if [ $cero == "${gato2[$c]}" ] && [ $c -lt 4 ]; then
					 					gato2[$c]=$user2
					 					revisar echo $user2
					 					fin_u=1
					 			fi
					 			;;
						3) 
								if [ $cero == "${gato3[$c]}" ] && [ $c -lt 4 ]; then 
					 					gato3[$c]=$user2
					 					revisar echo $user2
					 					fin_u=1
					 			fi
					 			;;
						*)       
					 			echo "Elige una opción válida"
					 			;;
					esac
					let tiros=tiros+1
			done
			mostrar
	done
}
datos
