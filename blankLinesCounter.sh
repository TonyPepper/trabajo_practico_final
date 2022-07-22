#!/bin/bash

# Contador de líneas en blanco

TEXTO=$1

CANT=$(grep -c ^$ $TEXTO)
echo "El numero de lineas vacías en $TEXTO es de $CANT"

