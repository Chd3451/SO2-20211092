#!/bin/bash
#Realiza un cron Schedule para un script.sh 
#que guarde la fecha y hora de tus clases de 	sistemas operativos con cada encuentro semanal. 8/3/2023

#Sin probar todavia


hora_actual=$(date +"%H:%M")
if [[ "$hora_actual" < "8:15" ]] || [[ "$hora_actual" > "10:00" ]]; then
  exit 0
fi

fecha=$(date +"%Y-%m-%d %H:%M:%S")
echo "$fecha - Clase de Sistemas Operativos" >> clases.txt

