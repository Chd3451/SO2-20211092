#!/bin/bash

# Función que se ejecuta al producirse un error
function error_handler {
    echo "Error: debe ingresar un número entero positivo." >&2
}

# Utilización de trap y ERR para manejar el error
trap error_handler ERR

# Pedir al usuario que ingrese un número entero positivo
read -p "Ingrese un número entero positivo: " n

while (( n <= 0 )); do
    # Generar un error si no se cumple la condición
    error_handler

    # Pedir al usuario que ingrese un número entero positivo
    read -p "Ingrese un número entero positivo: " n
done

# Imprimir todos los números impares desde 1 hasta el número ingresado
for ((i=1; i<=n; i+=2)); do
    # Manejar cuando se debe usar la coma
    if [ "$i" -eq "$n" ]; then
        echo "$i"
    else
        echo -n "$i, "
    fi
done
