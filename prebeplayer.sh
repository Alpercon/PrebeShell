#!/bin/bash
clear
while :
do
figlet PrebePlayer
echo "Bienvenido a la prebeplayer, selecciona una opcion:"
echo "1)Reproducir la carpeta de musica actual"
echo "2)Reproducir aleatoriamente la carpeta de musica actual"
#echo "3)reproducir una cancion en especifico"
#echo "4)Listar canciones disponbles" proximamente :)
echo "5)Salir"
read choice 
case $choice in
	1)
		clear
		echo "S/SpaceBar = pausa"
		echo "Siguiente=f"
		echo "Anterior= d"
		echo "Quitar=q"
		mpg123  -C -q *.mp3
		clear
		;;
	2)	
		clear
		echo "S/SpaceBar = pausa"
		echo "Siguiente=f"
		echo "Anterior= d"
		echo "Quitar=q"
		mpg123  --random -C -q *.mp3
		clear
		;;
	5)
		exit
		;;
	
	*)
		clear 
		echo "Ingresa una opcion valida"
		;;
	esac
done
