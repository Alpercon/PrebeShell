#!/bin/bash

function arbol
{
	echo "La función árbol permite observar los archivo y carpetas en forma de árbol, esto implica que todos parten del directorio desde el que se esta llamando"
	echo "Nos muestra también archivos y carpetas ocultas"
	echo "La función recibe un argumento que es la carpeta a la cual queremos visualizar o si no lo recibe muestra la estructura del lugar en el que estamos"
}
function PrebeClock
{
	echo "Nos muetra la fecha y hora del sistema, no recibe parámetros"
}
function Buscador
{
	echo "Nos permite buscar un archivo dentro de un directorio"
	echo "Necesita dos parametros: "
        echo "Nombre del archivo"
	echo "Carpeta en la que se quiere buscar"
	echo ""
	echo "Se especifican en ese orden"
}
function Prebeplayer
{
	echo "Inicia la Prebeplayer"
	echo "Despliega un menu de opciones a elegir"
}
function gato
{
	echo "Permite un enfrentamiento entre dos jugadores"
    echo "Debe tener en cuenta que las coordenadas se basan en lo siguiente"
	echo "(1,1) | (1,2) | (1,3)"
	echo "______|_______|______"
	echo "(2,1) | (2,2) | (2,3)"
	echo "______|_______|______"
	echo "(3,1) | (3,2) | (3,3)"
    echo "      |       |      "

}
pokemonthink "Bienvenido (: Los comandos con los que cuenta la prebeshell son:"
echo ""
echo -e "\e[34mPrebeClock \e[0m"
echo -e "\e[34marbol\e[0m"
echo -e "\e[34minfo\e[0m"
echo -e "\e[34mBuscador\e[0m"
echo -e "\e[34mprebeplayer \e[0m"
echo -e "\e[34mdados \e[0m"
echo -e "\e[34mmemoria \e[0m"
echo -e "\e[34mgato \e[0m"
echo ""
echo "Si quieres saber más acerca de un comando escribe cuál, para salir escribe salir"
read -e comando
if [[ "$comando" == "arbol" ]]; then
		arbol
elif [[ "$comando" == "PrebeClock" ]]; then
		PrebeClock
elif [[ "$comando" == "Buscador" ]]; then
		Buscador
elif [[ "$comando" == "prebeplayer" ]]; then
		Prebeplayer
elif [[ "$comando" == "manual" ]]; then
		echo "Muestra breve información sobre un comando"
elif [[ "$comando" == "dados" ]]; then
		echo "Juego cubilete, cada usuario lanza los dados, gana quien tenga más pares"
elif [[ "$comando" == "memoria" ]]; then
		echo "Juego de memoria,se nos muestran números aleatorios y luego se nos pide introduzcamos la secuencia"
		echo "Para introducir la secuencia debemos poner algo así: número número"
		echo "Conforme subes de nivel tendrás que recordar más números"
elif [[ "$comando" == "gato" ]]; then
	    gato
elif [[ $comando == "salir" ]]; then
		sleep 1
else 
		echo "Comando no encontrado"
fi
read 
clear
