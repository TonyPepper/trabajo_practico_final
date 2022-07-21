#!/bin/bash

TEXTO=$1
cat textovacio.txt > mayor4.txt

for word in $(cat $TEXTO)
do
  if (( ${#word} >= 4 )); then
    echo $word >> mayor4.txt
   fi

done

cat mayor4.txt | sort -u < mayor.txt 
#if [ $count -eq 5 ];
#then
#break
#fi
#((count++)

#for $(cat mayor.txt) in $(cat mayor4.txt)
#do
#  if ((  $(cat mayor.txt) in cat mayor4.txt )); then
#    echo $word & echo >> mayor4.txt
#   fi
#
#done


#cat mayor.txt | sort -u mayor.txt 
