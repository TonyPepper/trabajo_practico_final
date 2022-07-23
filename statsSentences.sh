#!/bin/bash


#Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

TEXTO=$1
MIN=999
MAX=0
MAXN=0
MINN=0

TOTAL_PAL=0
cat $TEXTO | tr "." "\n" >> oraciones.txt
CONT_TOTAL=0
FILE=oraciones.txt

while read p;do
   CONT_TOTAL=$((CONT_TOTAL+1))
   TOTAL_PAL=$((TOTAL_PAL+$(echo $p | wc -w)))
   CONT=$(echo "$p" | wc -w)

   if (("$CONT" > 0 && "$CONT" < "$MIN"))
   then
        MIN=$CONT
        MINN=$p
   elif (( "$CONT" > "$MAX" ))
   then
        MAX=$CONT
        MAXN=$p
    
   fi

done <$FILE 

echo "La oración más corta tiene  $MIN palabras y es: $MINN"
echo "La oración más larga tiene $MAX palabras y es: $MAXN"
echo "El promedio es" $(($TOTAL_PAL / $CONT_TOTAL))
echo $TOTAL_PAL / $CONT_TOTAL
rm oraciones.txt
