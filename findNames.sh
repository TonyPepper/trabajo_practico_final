#!/bin/bash
#Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.

TEXTO=$1
echo "Las palabras empezadas con mayusculas son"
for word in $(cat "$TEXTO" | tr ",." " ")
  do  
    if [[ ${word:0:1} == [A-Z] && ${word:2:1} == [a-z] ]]
  then
    echo "$word"

   fi
   
done
