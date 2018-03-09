#!/bin/bash

Documento=$1
Directorio=$2
Actual=$PWD

cd $2 > /dev/null
if [ $? -eq 0 ]; then
	cd $Actual
else
	echo "Directorio invalido"
	exit 1
fi




for i in $2* ;do
	if [[ "$i" == "$2$1" ]]; then
		echo "Su archivo si existe"
		cd $2 && ls
		read s
		cd $Actual
		exit 0
	fi
done;

echo "Archivo no encontrado"
echo "$i"
echo "$2$1"