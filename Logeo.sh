#!/bin/bash

Usuario=$1
Password=$2


export Password
passR=`grep -w "$Usuario" /etc/shadow | cut -d: -f2`
export algo=`echo $passR | cut -d'$' -f2`
export salt=`echo $passR | cut -d'$' -f3`
PASS=$(perl -le 'print crypt("$ENV{Password}","\$$ENV{algo}\$$ENV{salt}\$")')

if [ "$PASS" == "$passR" ]; then
	echo "Password valido"
	bash $PWD/Bienvenido.sh
	else
		echo "Password invalido"
		exit 1
fi






