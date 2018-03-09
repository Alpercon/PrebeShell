#!/bin/bash
clear

if [[ "$USER" != "root"  ]]; then		#verifica que haya entrado el usuario como root, esto porque vamos atrabajar con passwords
	echo -e "\nPara poder ingresar a la PrebeShell primero debe logearse como root\n"  #Si no ingresamos como root causara errores 
	exit 1;																			   #en el funcionamiento de programa
fi


echo "Para usar la PrebeShell debe logearse primero" 
clear
while [ true ]; do	#Repetimos hasta que introduzca un usuario valido
	echo ""
	read -p "Usuario: " Usuario
	echo "Password: "
	read -s Password
	id -u $Usuario > /dev/null #Verificamos que el usuario exista
	#redireccionando la salida de id del usuario a /dev/null para evitar que arroje el id del usuatrio
	if [ $? -eq 0 ]; then	#Verificamos que la operacion anterior (existencia de usuario) se haya realizado correctamente
		echo "Usuario valido"
		bash $PWD/Logeo.sh $Usuario $Password
		bash $PWD/Bienvenido.sh
		exit 0;
	else
		echo "Usuario invalido"
		echo "Seleccione un usuario valido"
	fi
done
