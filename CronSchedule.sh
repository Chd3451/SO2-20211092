#!/bin/bash
#Sin probar todavia

hora_actual=$(date +"%H:%M")
if [[ "$hora_actual" < "8:15" ]] || [[ "$hora_actual" > "10:00" ]]; then
  exit 0
fi

fecha=$(date +"%Y-%m-%d %H:%M:%S")
echo "$fecha - Clase de Sistemas Operativos" >> clases.txt

