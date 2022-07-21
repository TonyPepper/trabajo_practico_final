#!/bin/bash
TEXTO=$1
cat textovacio.txt > mayor4.txt

for word in $(cat $TEXTO)
do
   echo $word >> mayor4.txt
done

cat mayor4.txt #| grep '${A,,*}'
