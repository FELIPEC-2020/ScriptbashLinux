#!/bin/bash
echo "PRESENTADO POR:"
echo "JHON EDISON SANCHEZ CORTES		COD. 3801911027"
echo "ANDRES FELIPE CASTAÑEDA HERNANDEZ	COD. 3801911026"
echo "**************************************************************************"
#ejemplo2

#Crear un script cuales son los usuarios que tienen bin bash como consola.
id=$(cat /etc/passwd | awk -F ":" '{print $3}')

echo "-------------------------------------"
echo "Los usuarios con consola bin/bash son:"
echo "-------------------------------------"
echo

shell=$(cat /etc/passwd | grep /bin/bash | cut -d: -f1,7)
echo "$shell"
echo "-------------------------------------"
