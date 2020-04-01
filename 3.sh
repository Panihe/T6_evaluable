#!/bin/bash

maxlineas=`cat usuarios.txt | wc -l`
numlineas=1
conectados=0

read -p "Introduce un dia : " dia
read -p "Introduce un mes : " mes

maxlineas=`cat usuarios.txt | wc -l`

while [ $numlineas -le $maxlineas ]; do
	linea=`cat usuarios.txt | head -$numlineas | tail -1`
	user=`echo  $linea | awk '{print $1}'`
	day=`echo $linea | awk '{print $2}'`
	month=`echo $linea | awk '{print $3}'`

	if [[ $dia = $day ]] && [[ $month = $mes ]]; then
		conectados=$((conectados+1))
		echo "$user"
	fi

	numlineas=$((numlineas+1))

done

if [ $conectados = "0" ];then
		echo "No hay nadie registrado en esa fecha"
else
		echo $user
fi