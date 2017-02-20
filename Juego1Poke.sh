#!/bin/bash

$arreglo [1]= bulbasaur
$arreglo [2]= ivysaur
$arreglo [3]= venusaur
$arreglo [4]= charmander
$arreglo [5]= charmeleon
$arreglo [6]= charizard
$arreglo [7]= squirtle
$arreglo [8]= wartortle
$arreglo [9]= blastoise
$arreglo [10]= caterpi
$arreglo [11]= metapod
$arreglo [12]= butterfree
$arreglo [13]= weedle
$arreglo [14]= kakuna
$arreglo [15]= beedrill
$arreglo [16]= pidgey
$arreglo [17]= pidgeotto
$arreglo [18]= pidgeot
$arreglo [19]= rattata
$arreglo [20]= raticane


$variablecaracter = 's'
until [$variablecaracter != 'n'];do 
echo -e "Hola usuario vamos a ver si eres un maestro pokemon "
echo "\n\n"
echo -e "pulsa 1 para continuar o teclea exit para salir seguido de la tecla enter"
if $variable = 1
then
	clear
	$variable4 = 0
 	until[$variable4 < 10]; do
 
		$variable2 = ($RANDOM % 20)
		
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
