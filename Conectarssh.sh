#!/bin/bash

# Definir una función para conectar a un dispositivo SSH
function conectar_ssh {
    echo "Conectar a $1"
    read -p "Dirección IP: " ip
    read -p "Usuario: " usuario
    read -s -p "Contraseña: " contraseña

    # Utiliza sshpass para conectarte automáticamente con la contraseña
    sshpass -p "$contraseña" ssh "$usuario@$ip"
}

# Ciclo para conectar a múltiples dispositivos
while true; do
    echo "1. Conectar a un dispositivo SSH"
    echo "2. Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            conectar_ssh
            ;;
        2)
            echo "Saliendo del script"
            exit 0
            ;;
        *)
            echo "Opción no válida"
            ;;
    esac
done
