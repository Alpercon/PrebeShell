#!/bin/bash
clear

echo -e "Usted se ha logeado coorrectamente\n"
echo -e "\nHola Bienvenido a la PrebeShell"
while [[ true ]]; do
	echo "Introduce manpage para ver los comandos que se pueden utilizar y una descripcion de ellos"
	echo "Introduce 'salir' para salir de la Prebeshell"
	echo ""
	read -p "$USER"@"$HOSTNAME":"$PWD" var		##Promt
	if [[ "$var" == "manpage" ]]; then
		 echo "Aun no existe este script" #bash $PWD/manpage.sh
		 exit 0;
	elif [[ "$var" == "salir" ]]; then
		echo -e "\nVuelve Pronto"
		exit 0;
	else
		echo -e "Opcion no valida\nSeleccione otra opcion" 
	fi
done
