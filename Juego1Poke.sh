#!/bin/bash
arreglo[0]="red"
arreglo[1]="bulbasaur"
arreglo[2]="ivysaur"
arreglo[3]="venusaur"
arreglo[4]="charmander"
arreglo[5]="charmeleon"
arreglo[6]="charizard"
arreglo[7]="squirtle"
arreglo[8]="wartortle"
arreglo[9]="blastoise"
arreglo[10]="caterpi"
arreglo[11]="metapod"
arreglo[12]="butterfree"
arreglo[13]="weedle"
arreglo[14]="kakuna"
arreglo[15]="beedrill"
arreglo[16]="pidgey"
arreglo[17]="pidgeotto"
arreglo[18]="pidgeot"
arreglo[19]="rattata"
arreglo[20]="raticane"

let contador=0
let marcador=0

cat ./Prebeshell/0.txt
echo "vamos a ver que tanto sabes de pokemon"
echo "si te sale el comodin escribe el nombre del primer entrenador de gbc"
#detiene el avance hasta que se precione alguna tecla
read -rsp $'Press any key to continue...\n' -n1 key
        while [ $contador -ne 10 ]; do
                clear
                pokemon=`echo $(($RANDOM % 20))`
                let nombrepokemon=$pokemon
                cat $nombrepokemon.txt
                echo "escribe el nombre del pokemon :3 "
                read cadena
                if [ $cadena == ${arreglo[$pokemon]} ];
                then
                        clear
                        echo "muy bien"
                        read -rsp $'Press any key to continue...\n' -n1 key
                        let marcador=$marcador+1
                fi
                let contador=$contador+1
        done
echo "tu marcador final es $marcador"
#fin
