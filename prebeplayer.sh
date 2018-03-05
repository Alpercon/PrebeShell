#!/bin/bash

cd /home/*/Music
clear 
while :
do
figlet PrebePlayer
echo -e "\e[1;36m\n>>Bienvenido! selecciona una opcion:\e[0m"
echo -e "	\e[0;34m1)Reproducir carpeta actual\e[0m"
echo -e "	\e[0;34m2)Reproducir aleatoriamente la carpeta de musica actual\e[0m"
echo -e "	\e[0;34m3)Donde estoy?\e[0m"
echo -e "	\e[0;34m4)Salir\e[0m"
read choice 
case $choice in
	1)
		clear
		echo  "         ^"
		echo -e '        / \	\e[0;31m [reproduciendo] \e[0m'
		echo "         |"
		figlet PrebePlayer
		echo -e " \e[0;32m================================================\e[0m"
		echo -e "\e[0;32m|\e[0m\e[1;32m( |< )	( << )    ( >|| )    ( >> )     ( >| )\e[0m   \e[0;32m|\e[0m"
		echo -e "\e[0;32m|\e[0m \e[1;31m[d]	  [,]	  [space]     [.]         [f]\e[0m    \e[0;32m|\e[0m"
		echo -e "\e[0;32m ================================================\e[0m"
		echo -e "	\e[0;32m||\e[0m\e[1;32mMás informacion del rolon[t]\e[0m\e[0;32m||\e[0m"
		echo -e "	\e[0;32m||\e[0m\e[1;32mMás comandos [h]\e[0m            \e[0;32m||\e[0m"          
		echo -e "	\e[0;32m||\e[0m\e[1;32mSalir[q]\e[0m                    \e[0;32m||\e[0m"
		echo -e "	  \e[0;32m============================\e[0m"
		echo -e "	  \e[1;32mControl de volumen: [-]/[+]\e[0m"
		mpg123 --title  -C -q *.mp3
		clear
		;;
	2)	
		clear
		echo  "         ^"
		echo -e '        / \	\e[0;31m [reproduciendo] \e[0m'
		echo "         |"
		figlet PrebePlayer
		echo -e " \e[0;32m================================================\e[0m"
		echo -e "\e[0;32m|\e[0m\e[1;32m( |< )	( << )    ( >|| )    ( >> )     ( >| )\e[0m   \e[0;32m|\e[0m"
		echo -e "\e[0;32m|\e[0m \e[1;31m[d]	  [,]	  [space]     [.]         [f]\e[0m    \e[0;32m|\e[0m"
		echo -e "\e[0;32m ================================================\e[0m"
		echo -e "	\e[0;32m||\e[0m\e[1;32mMás informacion del rolon[t]\e[0m\e[0;32m||\e[0m"
		echo -e "	\e[0;32m||\e[0m\e[1;32mMás comandos [h]\e[0m            \e[0;32m||\e[0m"          
		echo -e "	\e[0;32m||\e[0m\e[1;32mSalir[q]\e[0m                    \e[0;32m||\e[0m"
		echo -e "	  \e[0;32m============================\e[0m"
		echo -e "	  \e[1;32mControl de volumen: [-]/[+]\e[0m"
		mpg123 --title --random  -C -q *.mp3
		clear
		;;
	
	3)
		clear
		while :
		do
		figlet PrebePlayer
		echo -e "Estas en " $(pwd)
		echo -e "\e[1;36m>>Bienvenido! selecciona una opcion:\e[0m"
		echo -e "	\e[0;34m1)Ver canciones disponibles\e[0m"
		echo -e "	\e[0;34m2)Cambiar de carpeta\e[0m"
		echo -e "	\e[0;34m3)Reproducir por titulo\e[0m" 
		echo -e "	\e[0;34m4)Regresar\e[0m"

		read choice2
		case $choice2 in
			1)
				clear
				if [ -a "*.mp3" ]; then 
					ls -1 *.mp3
					echo -e "\e[1;31mPresiona ENTER para ocultar la lista\e[0m"
				else
					echo -e "\e[1;31mAqui no hay canciones\e[0m"
				fi		
				;;

			2)
				echo "ingresa la nueva ruta (contando desde /home)"
				read newRoute
				cd "$newRoute"
				actual= pwd
				clear
		
				if [ "$newRoute" != "$pwd" ]; then
					echo -e "\e[1;32mListo!\e[0m"
				else
					echo -e "\e[0;31mError, no existe la carpeta o se escribio mal el directorio\e[0m"		
				fi

				;;

		
			3)	
				echo "Ingresa el titulo de la cancion:"
				read song
				clear
				figlet PrebePlayer
				echo -e " \e[0;32m================================================\e[0m"
				echo -e "\e[0;32m|\e[0m\e[1;32m( |< )	( << )    ( >|| )    ( >> )     ( >| )\e[0m   \e[0;32m|\e[0m"
				echo -e "\e[0;32m|\e[0m \e[1;31m[d]	  [,]	  [space]     [.]         [f]\e[0m    \e[0;32m|\e[0m"
				echo -e "\e[0;32m ================================================\e[0m"
				echo -e "	\e[0;32m||\e[0m\e[1;32mMás informacion del rolon[t]\e[0m\e[0;32m||\e[0m"
				echo -e "	\e[0;32m||\e[0m\e[1;32mMás comandos [h]\e[0m            \e[0;32m||\e[0m"          
				echo -e "	\e[0;32m||\e[0m\e[1;32mSalir[q]\e[0m                    \e[0;32m||\e[0m"		
				echo -e "	  \e[0;32m============================\e[0m"
				echo -e "	  \e[1;32mControl de volumen: [-]/[+]\e[0m"
				mpg123 -C -q --title "$song.mp3"
				clear
				;;
	
				
			4)	
				clear
				break
				;;
			
			*)	
				echo "Selecciona una opcion correcta"
				clear
				;;
			esac
				
		# clear
		done
		;;
		

	4)
		clear
		exit
		;;
	
	*)
		clear		
		echo -e "\e[1;31mIngresa una opcion valida\e[0m"
		
		;;
	esac
done
