#!/bin/bash
#Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

TEXTO=$1
MIN=100
MAX=1
MAXN=0
CONT_TOTAL=0
CONT_PAL=0

for word in $(cat $TEXTO)
do
  PALN=${#word}

  CONT_TOTAL=$((CONT_TOTAL+1))
  CONT_PAL=$((CONT_PAL+PALN))

   if (( $PALN > $MAX )); then
    MAX=$PALN
    MAXN=$word
   elif (($PALN < $MIN)); then
     MIN=$PALN
     MINN=$word
   fi
   
done

PROM=$((CONT_PAL/CONT_TOTAL))
echo "Con" $MAX "caracteres, la palabra mas las larga es " $MAXN
echo "Con" $MIN  " caracteres, la palabra mas corta es "$MINN  
echo "El promedio de la logitud de una palabra es de "$PROM " caracteres"