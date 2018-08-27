#!/bin/bash
#Programa: Recuperar.sh
#Autor: Leydi Garcia Mendez
#Fecha: 26/Agosto/2018
#Descripción: Script para recuperar un archivo


echo "**       CONTENIDO DE PAPELERA     **"  
cd /home/leydi/.Papelera
ls
echo ""
echo "**        RECUPERAR ARCHIVO      **"  
echo "Ingrese el nombre del archivo que desea recuperar:"
read arch 

echo ""             
if [[ $arch -eq 1]];then
	existe=`ls /home/leydi/.Papelera/$arch | grep -c $arch`
	mv /home/leydi/.Papelera/$arch /home/leydi/$arch 
	echo "El archivo fue recuperado"	
fi
exit	

