#!/bin/bash
echo "PRESENTADO POR:"
echo "JHON EDISON SANCHEZ CORTES		COD. 3801911027"
echo "ANDRES FELIPE CASTAÑEDA HERNANDEZ	COD. 3801911026"
echo "**************************************************************************"
#ejemplo4

#Crear un script que reciba la url de un sitio web y decir si ese sitio está bien
#o tiene algún tipo de problema (está bien si responde 200).


echo "-------------------------------------"
echo "Indica el estado actual de la pagina Web a consultar"
echo "-------------------------------------"
echo

echo "Ingrese la URL que desea validar"
read url
respuesta=$(curl -sIL $url | grep '^HTTP' | tail -1 | awk  '{print $2}')
if [[ "$respuesta" == "200" ]]; then
  echo "La página está bien"
else
  echo "La página tiene un problema"
fi
