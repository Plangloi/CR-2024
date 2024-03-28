#!/bin/bash


out=0

    function pause {
        echo "enter to continue! "
        read
        affichagemenu
    }

    function verifyuser {
            read -p " Nom user : " util
            if grep "$util:" /etc/passwd > /dev/null; then
                echo "L'utilisateur $util existe!"
            else
                echo "Lutilisateur error!"
            fi
    pause
    }

    function afficheruid {
            read -p "Nom de lutilisateur : " util
            clear
            uid=$(id $util | awk '{print $1}')
            echo "L'uid de $util est : $uid"
            pause
    }

    function quiter {
            echo " Bye Bye! "
            out=1
    }

    function affichagemenu {
        clear
        toilet Power tools

        echo -e "\033[1;32m1-User Tools\033[m "
        echo -e "\033[1;32m2-Nmap\033[m "
        echo -e "\033[1;32m3-SSH Tools\033[m "
        echo -e "\033[1;32m3-Network\033[m "
        echo ""
        echo -e "\033[1;31m(Q)uitter\033[m "
        echo ""
        read -p "Selectionner un choix : " choix

     }

     function nettools {
        echo " 1-Afficher la configuration de l’interface réseau " 
        echo " 2-Afficher les connexions réseau "
        echo -e " \033[1;33m3-Main menu\033[m "

                read -p " Choisir 1-3 : " nettools_input
        if [[ $nettools_input -eq 1 ]]; then
             

        elif [[ $usert -eq 2 ]]; then
            

        elif [[ $usert -eq 3 ]]; then
            affichagemenu
        else
            echo "maivais choix"
        fi
     }

     function Usertools {
        echo " 1-Vérifier l'existence d'un utilisateur " 
        echo " 2-Connaître l'UID d'un utilisateur "
        echo " 3-Afficher les utilisateurs " 
        echo " 4-Ajouter un utilisateur " 
        echo " 5-Changer le mot de passe d’un utilisateur" 
        echo -e " \033[1;33m3-Main menu\033[m "

                read -p " Choisir 1-3 : " usert
        if [[ $usert -eq 1 ]]; then
            verifyuser 

        elif [[ $usert -eq 2 ]]; then
            afficheruid

        elif [[ $usert -eq 3 ]]; then
            affichagemenu
        else
            echo "maivais choix"
        fi
     }

     function ssh1 {
        echo " 1-SSH install"
        echo " 2-SSH On"
        echo " 3-SSH Off"
        echo -e "\033[1;33m4-Main menu\033[m "


        read -p " Choisir 1 -3 " ssh1choix
        if [[ $ssh1choix -eq 1 ]]; then
            sudo apt-get update && sudo apt install 

        elif [[ $ssh1choix -eq 2 ]]; then
            echo "choix 2"

        elif [[ $ssh1choix -eq 3 ]]; then
            echo "choix 3"

        elif [[ $ssh1choix -eq 4 ]]; then
            affichagemenu

        else
            echo "maivais choix"
        fi
     }

function nmap1 {
        echo "1-Nmap install"
        echo "2-Nmap port ouvert"
        echo -e "\033[1;33m3-Main menu\033[m "

        read -p " Choisir 1 or 2 : " netstatchoix

        if [[ $netstatchoix -eq 1 ]]; then
            sudo apt install nmap
            pause
        elif [[ $netstatchoix -eq 2 ]]; then
            read -p " target ip : (192.168.1.1/24) " target
            nmap $target
            pause

        elif [[ $netstatchoix -eq 3 ]]; then
            affichagemenu

        else
            echo "Maivais choix"
            pause
        fi
}

function main {

    while [[ out -eq 0 ]]; do

        if [[ $choix -eq 1 ]]; then
                Usertools

        elif [[ $choix -eq 2 ]]; then
                nmap1

        elif [[ $choix -eq q ]]; then
                quiter

        elif [[ $choix -eq 3 ]]; then
                ssh1

        elif [[ $choix -eq 4 ]]; then
                nmap1

        else
            echo " Mauvais Choix "

        pause


        fi
    done
}

affichagemenu
main