#!/bin/bash
clear

echo -e "Usted se ha logeado coorrectamente\n"
echo -e "\nHola Bienvenido a la PrebeShell"
while [[ true ]]; do
	echo ""
	read -p "Introduce el comando manpage para saber que comandos puedes utilizar " var
	echo "Aqui debe de ir el primer promt"
	if [[ "$var" == "manpage" ]]; then
		 echo "Aun no existe este script" #bash $PWD/manpage.sh
		 break
	elif [[ "$var" == "salir" ]]; then
		echo -e "\nVuelve Pronto"
		exit 1;
	else
		echo -e "Opcion no valida\nSeleccione otra opcion" 
	fi
done