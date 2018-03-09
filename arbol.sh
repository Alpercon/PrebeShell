#!/bin/bash
function arbol
{
	echo "Indique la carpeta"
	read carpeta
	if [[ "$carpeta" == "" ]]; then
			find . | sed -e 's;[^/]*/;|____;g;s;____|; |;g' 
	else
			find $carpeta | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
	fi
} 
arbol

