#!/bin/bash
#Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.

TEXTO=$1

for word in $(cat $TEXTO | tr ",." " ")
do
  echo $word >> lista.txt
done

grep '[A-Z]' lista.txt
rm lista.txt