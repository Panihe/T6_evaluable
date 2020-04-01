#!/bin/bash

maxlineas=`cat usuarios.txt | wc -l`
numlinea=0
null=0

read -p "Introduce un mes " mes
while [ $numlinea -le $maxlineas ];do
	linea=`cat usuarios.txt | head -$numlinea | tail -1`
	user=`echo  $linea | awk '{print $1}'`
    day=`echo $linea | awk '{print $2}'`
    month=`echo $linea | awk '{print $3}'`

    if [ $mes = $month ];then
    	echo "$day"
    else
    	null=$((null+1))
	fi

	numlinea=$((numlinea+1))
done

if [ $null = 0 ];then
	echo "0"
fi


