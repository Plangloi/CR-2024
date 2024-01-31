#!/bin/bash

    function verifyuser {
            read -p " Nom user : " util
            if grep "$util:" /etc/passwd > /dev/null; then
                echo "Lutilisateur existe!"
            else
                echo "Lutilisateur error!"

            fi
    }

    function afficheruid {
            read -p "Nom de lutilisateur : " util
            id $util
            }

    function quiter {
            echo " Bye Bye! "
    }

    function affichagemenu {
        echo " 1. Vérifier l'existence d'un utilisateur " 
        echo " 2. Connaître l'UID d'un utilisateur "
        echo " 3. Quitter "
    }


function main {
        read -p "Selectionner un choix " choix

        if [[ $choix -eq 1 ]]; then
                verifyuser


        elif [[ $choix -eq 2 ]]; then
                afficheruid

        elif [[ $choix -eq 3 ]]; then
                quiter

        fi
}

affichagemenu
main