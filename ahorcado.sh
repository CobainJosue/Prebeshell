#!/bin/bash

# Script para jugar ahorcado
# Figuras del ahorcado obtenidas de la página:
# https://programaresdivertido.wordpress.com/2014/08/29/programando-un-ahorcado-en-consola-con-java-nivel-medio/

echo -e "\t\t\t\tJUEGO DEL AHORCADO.";

# Instrucciones del juego

		echo -e "\t\t\tInstrucciones:"
		echo -e "\tBienvenido al juego.\n
		\tEl juego consiste en adivinar letra por letra una\n
		\tpalabra, la cual no contendrá ni \n
		\tni acentos ni caracteres especiales (a excepcion de\n
		\tMayusculas)\n\n
		\tPrimero te aparecerán guiones que indicarán la longitud 
        \tde la palabra que se busca, posteriormente eligiras letras
		\tque creas pueden estar contenidas en la misma, si\n
		\ttu letra está en la palabra, \n
		\testa sustituirá el guión correspondiente\n
		\ta su posición con lo cual estaras mas\n
		\tcerca de adivinar la palarba mientras que en el caso\n
		\tcontrario perderás una vida.\n\n";

# Se generará un número aleatorio y se guarda en numero
numero=(($RANDOM%150));
i=1; #inicia contador para recorrer el archivo

archivo_pal= cat ./opciones.txt;
archivo_pistas= cat ./pistas.txt;

for find in archivo_pal 
do  #ciclo para encontrar la palabra que corresponde al numero aleatorio

	if [ $i -eq $numero ];
	then
		palabra=$find; #aqui asigna la palabra del archivo a la variable palabra
	fi
	let i=$i+1;
done

<<<<<<< HEAD
for find in archivo_pistas 
do  #ciclo para encontrar la palabra que corresponde al numero aleatorio
=======
for find in archivo_pistas do  #ciclo para encontrar la pista que corresponde al numero aleatorio
>>>>>>> c767a612c42b9ea4c0d306787e171d749261c1d2

	if [ $i -eq $numero ]; then
		pista=$find; #aqui asigna la palabra del archivo a la variable pista
	fi
	let i=$i+1;
done

longitud=${#palabra}; #regresa la longitud de la palabra

for ((x=1; x<=$longitud; x++)); do
	array_pal[$x]=`expr substr $palabra $x 1`;
	resp[$x]=0; #arreglo para la respuesta del usuario
done


# Para el ciclo y la interfaz del juego

vidas=7;
lets_restantes=$longitud;

while [ $vidas -gt 0 ] && [ $lets_restantes -ne 0 ]; do
	
	echo -e "\t\tAdivine la siguiente palabra\n";
	echo -e "Pista: $pista"; 
	
	let indice=8-$vidas;
	
	cat "figura"$indice".txt"; #imprime el numero de figura dependiendo de los errores

	for ((x=1; x<=$longitud; x++)); do  #ciclo para imprimir un _ o la letra, dependiendo si está bien o mal
		if [ ${resp[$x]} -eq 0 ]; then
			echo -n " _ ";
		else
			echo -n " ${array_pal[$x]} ";
		fi
	done
	
	
	echo -n " Ingrese un caracter:";
	read -n 1 c;
	
	n_acierto=0;

	for ((x=1; x<=$longitud; x++)); do
		if [ "$c" == "${array_pal[$x]}" ]; then
			resp[$x]=1;
			
			let lets_restantes=$lets_restantes-1;
			let n_acierto=$n_acierto+1;
		fi
	done

	clear;
	if [ $n_acierto -eq 0 ]; then
		echo "Lo siento, la letra no está dentro de la palabra"; 
		let vidas=$vidas-1;
	else
		echo "Acertaste";
	fi

done

clear;

if [ $lets_restantes -eq 0 ]; then
<<<<<<< HEAD
	echo -e "\t\t\t`/ft.sh -f -r `\t\tCorrecto, es:"$palabra"
	\t\t\tLa victoria es toda tuya";
	cat ./figura0.txt;
=======
	echo "\t\t\t"$("\t\tExcelente, la palabra es:"$palabra";
	\t\t\tHas ganado.";
	cat figura0.txt;
>>>>>>> c767a612c42b9ea4c0d306787e171d749261c1d2
else
	echo -e "Suerte para la próxima, la palabra era \t\t\t\t$palabra";
	cat ./figura7.txt;
fi
exit