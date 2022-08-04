#!/bin/bash
PS3='Elija> '
echo "¿Que programa desea ejecutar?"
select programa in "I.E. de longitud de palabras" "I.E. de uso de palabras" "Nombres propios" "I.E. de longitud de oraciones" "Contador de líneas en blanco" "SALIR" 
do
[ -e "$programa" ] && echo "Elegir opcion valida!" && continue
[ "$REPLY" == 6 ] && echo "Hasta luego" && break
[ "$REPLY" == 1 ] && /bin/bash statsWords.sh texto.txt
[ "$REPLY" == 2 ] && /bin/bash statsUsageWords.sh texto.txt
[ "$REPLY" == 3 ] && /bin/bash findNames.sh texto.txt
[ "$REPLY" == 4 ] && /bin/bash statsSentences.sh texto.txt
[ "$REPLY" == 5 ] && /bin/bash blankLinesCounter.sh texto.txt


done

exit 1
