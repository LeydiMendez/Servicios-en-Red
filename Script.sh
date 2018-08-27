#!/bin/bash
#Programa: Script.sh
#Autor: Leydi Garcia Mendez
#Fecha: 26/Agosto/2018
#Descripción: Script para crear un nuevo script


echo "Ingrese el nombre del nuevo script:"
read nombre
echo ""
echo "Ingresa el nombre del autor:"
read autor
echo ""
echo "Ingresa una pequeña descripción:"
read desc

touch $nombre.sh

	echo "#!/bin/bash" >> $nombre.sh
	echo "#"Programa:$nombre >> $nombre.sh
	echo "#"Autor:$autor >> $nombre.sh
	echo "#"Fecha: $(date) >> $nombre.sh
	echo "#"Descripción:$desc >> $nombre.sh

chmod 755 $nombre.sh
nano $nombre.sh

exit
