#!/bin/bash

$variablecaracter = 's'
until [$variablecaracter != 'n'];do 
echo -e "Hola usuario vamos a ver si eres un maestro pokemon "
echo "\n\n"
echo -e "pulsa 1 para continuar o teclea exit para salir seguido de la tecla enter"
if $variable = 1
then
	clear
 	until[$variable4 < 10]; do
 
		$variable2 = ($RANDOM % 20)
		$variable4 = 0
 		cat | grep $variable2
 		read   cadena
		if ($cadena == $arreglo [$variable2]) then
 			$variable3 ++
			
		 	$variable4 ++
		fi
	done
clear
	echo -e "tu nivel de maestro pokemon indigo es: variable 4 - variable 3"
	echo -e "quieres volver a intentar? s/n"
[elif $variable != 1 then
	exit
] 

done 
exit
