#!/bin/bash
echo "Ingrese un nombre"
read nombre
edad=$(curl -s  https://api.agify.io/?name=$nombre | jq ".age")
echo "La edad promedio para el nombre $nombre es $edad años."

