#!/bin/bash
echo "Se va a comprobar que usuarios han iniciado sesión cada dia de un mes"
read -p "Introduce un dia : " dia
read -p "Introduce un mes : " mes

contador=0
aux=1

maxLineas=`cat usuarios.txt | wc -l`

while [ $aux -le $(($maxLineas + 1)) ]; do
	linea=`cat usuarios.txt | head -$aux | tail -1`
	user=`echo  $linea | awk '{print $1}'`
	day=`echo $linea | awk '{print $2}'`
	month=`echo $linea | awk '{print $3}'`

	if [ $month = $mes ] && [ $day = $dia ]; then
		echo "$user"
	fi

	aux=$(($aux + 1))
done