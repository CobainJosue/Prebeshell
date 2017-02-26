#!/bin/bash

clear
while true
do
	echo "Usuario: "
	read user
	echo "Password: "
	#read password
#if cat /etc/passwd | egrep -q $user && true
if su - $user
	then
	exit
while true
do

	trap '' 2

	echo -e "\e[1;34mPREBESHELL  \e[1;33mUsuario:`whoami` \e[0;36mEstas en: `pwd` $ \e[1;37m" 

	read comando

	case $comando in
	'salir')
		trap 2
		break
	;;
	'hola')
		echo 'hola mundo'
	;;
	'arbol')
		echo 'Dame la ruta: '
		read rutaA
		#ls -R $ruta | egrep ":" | sed -e 's/://' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
		ls -1FR $rutaA
	;;
	'fecha')
		echo "Hoy es: `cat /proc/driver/rtc | egrep "rtc_date" | egrep -o  "\w+-\w+-\w+"`"
	;;
	'hora')
		echo "Son las: `cat /proc/driver/rtc | egrep "rtc_time" | egrep -o  "\w+:\w+:\w+"`"
	;;
	'buscar')
		echo "Ruta donde buscar: "
		read ruta
		echo "Archivo o directorio a buscar: "
		read archivo

		if ls $ruta | egrep $archivo
		then
			echo "Archivo encontrado: `ls $ruta | egrep $archivo`"
		else
			echo "Archivo no encontrado :'v"
		fi
	;;
	'creditos')
		echo -e "-----------------Desarrolladores------------------------\n"
		echo -e "\tQuiñones Rivera Josue Emanuel\tPrebecario 3\n"
		echo -e "\tPedro Noe\tPrebecario \n"
		echo -e "\tRicardo Omar\tPrebecario \n"
	;;
	'ayuda')
		echo -e "---------------Comandos disponibles---------------------\n"
		echo -e "\tarbol\tPermite listar desde una ruta especificada, sin argumentos desde donde estas.\n"
		echo -e "\tfecha\tMuestra la fecha del sistema.\n"
		echo -e "\thora\tMuestra la hora del sistema.\n"
		echo -e "\tbuscar\tPermite una busqueda de un archivo en un directorio especifico, ambos argumentos se piden despues de ingresar el comando.\n"
		echo -e "\tayuda\tMuestra los comandos reconocidos en esta PREBESHELL.\n"
		echo -e "\tcreditos\tMuestra informacion sobre los desarrolladores de esta PREBESHELL.\n"
		echo -e "\tinfosis\tDa un panorama general de la computadora que esta ejecutando la PREBESHELL.\n"
		echo -e "\thola\tHola mundo ¿por que no?\n"
		echo -e "\tsalir\tPermite cerrar la PREBESHELL.\n"
		echo -e "\tpokemon\tJuego de pokemon (QUIZ).\n"
	;;
	'infosis')
		echo -e "---------------Informacion sobre tu PC------------------\n"
		echo -e "\n---------------Modelo de tu computadora------------------\n"
		echo "`cat /proc/cpuinfo | egrep "name"`"
		echo -e "\n------------Version de tu Sistema Operativo--------------\n"
		echo `cat /proc/version` 
	;;
	'pokemon')
		bash ./Juego1Poke.sh
	;;
	*)
		echo "No se reconoce el comando $comando"
	;;
	esac

done
break
else
	echo -e "Usuario no existente\n"
fi
done

exit