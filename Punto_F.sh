#!/bin/bash
mkdir ~/Punto_F
echo "Mi ip publica es: $(curl -s ifconfig.me)" > ~/Punto_F/Filtro_Avanzado.txt
MODELO=$(grep -i name /proc/cpuinfo | head -n1 | awk -F ':' '{print $2}')
FRECUENCIA=$(grep -i mhz /proc/cpuinfo | head -n1 | awk -F ':' '{print $2}')
echo "CPU Modelo:$MODELO Frecuencia:$FRECUENCIA MHz" >> ~/Punto_F/Filtro_Avanzado.txt
cat ~/Punto_F/Filtro_Avanzado.txt
