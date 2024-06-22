
#!/bin/bash

valor=$(($RANDOM % 100))
echo "Tiene 7 intentos para adivinar el nùmero entre 0 y 100:"
read numero
contador=0
while [ "$valor" -ne "$numero" ] && [ "$contador" -lt 6 ]; do
    if [ "$numero" -gt "$valor" ]; then
         echo "El nùmero ingresado es mayor.Intententalo con un nùmero menor:"
         read numero
    elif [ "$numero" -lt  "$valor" ]; then
         echo "El nùmero ingresado es menor.Intentalo cn un nùmero  mayor:"
         read numero
    fi
    contador=$((contador + 1))
done

if [ "$valor" -eq "$numero" ]; then
  echo "Bien! Has adivinado el nùmero."
else 
  echo "Has utilizado todos los intentos, el nùmero era $valor." 
fi   
