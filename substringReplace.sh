#!/bin/bash

# Reemplazo de subcadenas, que considere diferencias entre minúsculas y mayúsculas, pero ignore acentos. Recibe dos cadenas, y cada aparición de cadena1 debe reemplazarse por la cadena2
TEXTO=texto.txt

sed "s/á/a/g" $TEXTO >> noa.txt
sed "s/é/e/g" noa.txt >> noe.txt
sed "s/í/i/g" noe.txt >> noi.txt
sed "s/ó/o/g" noi.txt >> noo.txt
sed "s/ú/u/g" noo.txt >> nou.txt

echo "Ingresar primer cadena: "
read cadena1
echo "Ingresar segunda cadena"
read cadena2

sed "s/$cadena1/$cadena2/g" nou.txt
rm noa.txt
rm noe.txt
rm noi.txt
rm noo.txt
rm nou.txt

