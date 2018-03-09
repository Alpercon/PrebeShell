#!/bin/bash
clear
BLUE='\033[1;34m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
figlet -c "Bienvenido a la PrebeShell"
echo "Introduce manpage para ver los comandos que se pueden utilizar y una descripcion de ellos"
echo "Introduce 'salir' para salir de la Prebeshell"
echo ""
var =""
while [[ "$var" != "salir" ]]; do
	echo -ne "${GREEN}$USER"@"$HOSTNAME":"${BLUE}$PWD$ ${WHITE}"
	read -e var
	if [[ "$var" == "manpage" ]]; then
		 echo "Aun no existe este script" #bash $PWD/manpage.sh
		 exit 0;
	elif [[ "$var" == "salir" ]]; then
		echo -e "\nVuelve Pronto"
		exit 0;
	else
		$var
	fi
done
