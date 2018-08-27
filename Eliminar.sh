#!/bin/bash
#Programa: Eliminar.sh
#Autor: Leydi Garcia Mendez
#Fecha: 26/Agosto/2018
#Descripción: Script para borrar un archivo


echo "**          ELIMINAR ARCHIVO      **"  
cd /home/leydi
ls
echo ""
echo "Nombre del archivo:"
read arch 
echo ""             
echo "¿Está seguro que desea eliminar el archivo" $arch   
echo "         S) Si     N)No"        
echo ""
read opc
case $opc in
	S*| s*)
	existe=`ls /home/leydi/$arch | grep -c $arch`
			if [[ $existe -eq 1 ]]; then
				mv $arch /home/leydi/.Papelera/$arch
				echo "El archivo fue eliminado"	
			fi	
	;;
	N* | n*)
	exit
	;;
esac

