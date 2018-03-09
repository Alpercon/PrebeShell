#!/bin/bash
clear
BLUE='\033[1;34m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
figlet -c "Bienvenido a la PrebeShell"
echo "Introduce manual para ver los comandos que se pueden utilizar y una descripcion de ellos"
echo "Introduce 'salir' para salir de la Prebeshell"
echo ""
var=""
while [[ "$var" != "salir" ]]; do
	echo -ne "${GREEN}$USER"@"$HOSTNAME":"${BLUE}$PWD$ ${WHITE}"
	read -e var
	if [[ "$var" == "manpage" ]]; then
		 echo "Aun no existe este script"
	elif [[ "$var" == "Buscador.sh" ]]; then
		read -p "Ingrese el Archivo a buscar " Arch
		read -p "Ingrese el Directorio en el que desea buscarlo " Dir
		bash $PWD/Buscador.sh $Arch $Dir
	elif [[ "$var" == "dados" ]]; then
		bash $PWD/dados.sh
	elif [[ "$var" == "memoria" ]]; then
		bash $PWD/memoria.sh
	elif [[ "$var" == "PrebeClock" ]]; then
		bash $PWD/PrebeClock.sh
	elif [[ "$var" == "prebeplayer" ]]; then
		bash $PWD/prebeplayer.sh
        ##_______________________________________________
	elif [[ "$var" == "gato" ]]; then
		bash $PWD/gato.sh
	elif [[ "$var" == "manual" ]]; then
		bash $PWD/manual.sh
	elif [[ "$var" == "arbol" ]]; then
		bash $PWD/arbol.sh
	##_______________________________________________
	elif [[ "$var" == "salir" ]]; then
                break
	else
		$var
	fi
done
echo -e "\nVuelve Pronto\n"
