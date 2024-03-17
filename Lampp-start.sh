#!/bin/bash

# Verificar si Apache2 está activado
if systemctl is-active --quiet apache2; then
    # Detener Apache2 si está activado
    sudo systemctl stop apache2
    echo "Apache2 detenido."
fi

# Cambiar al directorio de XAMPP
cd /opt/lampp

# Ejecutar XAMPP
sudo ./xampp start
echo "Testeado en Linux-Mint"
