#!/bin/bash

read -p "Introduce un nombre de usuario: " nameuser
max=`cat usuarios.txt | wc -l`
i=0
while [ $i -le $max ]; do 
	user=`cat usuarios.txt| head -$i | tail -l | awk '{print $1}'`
	day=`cat usuarios.txt| head -$i | tail -l | awk '{print $2}'`
	month=`cat usuarios.txt| head -$i | tail -l | awk '{print $3}'`

	if [[ $nameuser == $user ]]; then

		for j in enero febrero marzo abril mayo junio agosto septiembre octubre; do
			if [ $monthn == $j ] && [ $meses < $j ]; then

				echo $j
			fi
		done
	fi

	i=$(($i+1))
done

echo -e "La última conexión de $nameuser fué: \t$j"



