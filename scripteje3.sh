#!/bin/bash
echo "PRESENTADO POR:"
echo "JHON EDISON SANCHEZ CORTES		COD. 3801911027"
echo "ANDRES FELIPE CASTAÑEDA HERNANDEZ	COD. 3801911026"
echo "**************************************************************************"
#ejemplo3

#Crear un script que calcule el tamaño libre del disco duro
#(si el uso está entre 1 y 40% un mensaje que diga todo está bien,
#entre 41 y 80, esta regular, y de 81 en adelante necesita cambiar de disco).

espacioDisco=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

echo "-------------------------------------"
echo "Indica el estado actual del HDD"
echo "-------------------------------------"
echo

if [ "$espacioDisco" -le 40 ] ;
then
        echo "Tu disco está bien"
        echo "El espacio usado es: $espacioDisco"%
elif [ "$espacioDisco" -ge 41  ] && [ "$espacioDisco" -le 80 ];
then
        echo "Tu disco está regular"
        echo "El espacio usado es: $espacioDisco"%
elif [ "$espacioDisco" -ge 81  ];
then
        echo "Necesitas cambiar de disco"
        echo "El espacio usado es: $espacioDisco"%
fi
echo "-------------------------------------"
