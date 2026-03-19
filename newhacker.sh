#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    clear
    echo "=============================="
    echo "      MI MENÚ DE TERMUX       "
    echo "=============================="
    echo "1) Actualizar sistema"
    echo "2) Ver archivos (ls)"
    echo "3) Instalar Python"
    echo "4) Salir"
    echo "=============================="
}

# Lógica del menú
while true; do
    mostrar_menu
    read -p "Selecciona una opción [1-4]: " opcion
    
    case $opcion in
        1)
            echo "Actualizando paquetes..."
            pkg update && pkg upgrade -y
            read -p "Presiona Enter para continuar..."
            ;;
        2)
            echo "Listando archivos actuales:"
            ls -la
            read -p "Presiona Enter para continuar..."
            ;;
        3)
            echo "Instalando Python..."
            pkg install python -y
            read -p "Presiona Enter para continuar..."
            ;;
        4)
            echo "¡Adiós!"
            exit 0
            ;;
        *)
            echo "Opción no válida. Intenta de nuevo."
            sleep 2
            ;;
    esac
done
