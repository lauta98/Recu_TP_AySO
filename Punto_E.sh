#!/bin/bash
mkdir ~/Punto_E
grep -i memtotal /proc/meminfo > ~/Punto_E/Filtro_basico.txt
grep -i "model name" /proc/cpuinfo | head -n1 >> ~/Punto_E/Filtro_basico.txt
grep -i mhz /proc/cpuinfo | head -n1 >> ~/Punto_E/Filtro_basico.txt
