#!/bin/bash

# Contador de líneas en blanco

TEXTO=$1
grep -E --line-number --with-filename '^$' $TEXTO > cantidad.txt
CANT=$(cat cantidad.txt | wc -l)

echo "El numero de linas vacías en $TEXTO es de $CANT"
rm cantidad.txt
