#!/bin/bash
#Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tienemás apariciones a la que tiene menos). Es decir, filtrar las palabras quetengan al menos 4 letras y de éstas, elegir las 10 más usadas.
TEXTO=$1
cat textovacio.txt > mayor4.txt

for word in $(cat $TEXTO | tr ",." " ")
do
  if (( ${#word} >= 4 )); then
    echo $word >> mayor4.txt
   fi
   
done

echo "El top de palabras mayores de 4 letras es "
echo "  VECES | PALABRA "
cat mayor4.txt | sort | uniq -c | sort -gr | sed 10q 


