#!/bin/bash

maxlineas=` cat usuarios.txt | wc -l `
numlinea=1
logueado=0

read -p "Introduce un usuario: " nameuser

while [ $numlinea -le $maxlineas ];do
    linea=`cat usuarios.txt | head -$numlinea | tail -1`
    user=`echo  $linea | awk '{print $1}'`
    day=`echo $linea | awk '{print $2}'`
    month=`echo $linea | awk '{print $3}'`


    if [ $nameuser = $user ];then
          logueado=$((logueado+1))
    fi

   numlinea=$((numlinea+1))
done

if [ $logueado = "0" ];then
	echo "No te has logeado"
else
	echo "$logeado"
fi
