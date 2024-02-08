#!/bin/bash


out=0

    function pause {
        echo "enter to continue! "
        read
    }

    function quiter {
            echo " Bye Bye! "
            break
    }

    function verifyuser {
            read -p " Nom user : " util
            if grep "$util:" /etc/passwd > /dev/null; then
                echo "L'utilisateur $util existe!"
                pause
            else
                echo "Lutilisateur error!"
            fi
    }

    function afficheruid {
            read -p "Nom de lutilisateur : " util
            clear
            uid=$(id $util | awk '{print $1}')
            echo "L'uid de $util est : $uid"
    }


    function affichagemenu {
        clear
        echo ""
        echo ""
        echo -e "\033[1;32m1-User Tools\033[m "
        echo -e "\033[1;32m2-Nmap\033[m "
        echo -e "\033[1;32m3-SSH Tools\033[m "
        echo -e "\033[1;32m4-Network\033[m "
        echo -e "\033[1;32m5-Procesus\033[m "       
        echo -e "\033[1;32m6-Monitor System\033[m "
        echo -e "\033[1;32m7-TBC\033[m "
        echo ""
        echo ""
        echo -e "\033[1;31m(Q)uitter\033[m "
        read -p "       Main Menu [1-7] : " choix_menu
     }


     function process {
        echo "          1-Afficher les processus actifs " 
        echo "          2-Terminer un processus "
        echo -e "           \033[1;33m3-Main menu\033[m "
        echo -e "           \033[1;31m(Q)uitter\033[m "

        read -p "           Menu Process [1-3] : " process_input
            
        if [[ $process_input -eq 1 ]]; then
            sudo ps
            pause
             
        elif [[ $process_input -eq 2 ]]; then
            read -p " PID ? " ps_PID 
            read -p " kill $ps_PID ? (Enter to Kill!)"
            read
            kill $ps_PID

        elif [[ $process_input -eq 3 ]]; then
            affichagemenu


        elif [[ $process_input == q ]]; then
            quiter

        else
            clear
            echo "Choice not valid! "
            sleep 2

        fi
     }

     function montools {
        echo "          1-Afficher les processus actifs " 
        echo "          2-Terminer un processus "
        echo -e "           \033[1;33m3-Main menu\033[m "

        read -p "           Choisir 1-2 : " montools_input

        if [[ $montools_input -eq 1 ]]; then
            cat /etc/network/interface
             
        elif [[ $montools_input -eq 2 ]]; then
            echo " 1-Mac "
            echo " 1-Linux "

        elif [[ $montools_input -eq 3 ]]; then
            main


        elif [[ $montools_input == q ]]; then
            quiter

        else
            clear
            echo "Choice not valid! "
            sleep 2

        fi
     }

     function nettools {
        echo "          1-Afficher la configuration de l’interface réseau " 
        echo "          2-Afficher les connexions réseau "
        echo -e "           \033[1;33m3-Main menu\033[m "

        read -p " Network Main [1-2] : " nettools_input
        if [[ $nettools_input -eq 1 ]]; then
            netstat -i
            pause
             
        elif [[ $nettools_input -eq 2 ]]; then
            netstat -ant
            pause

        elif [[ $nettools_input -eq 3 ]]; then
            affichagemenu

        elif [[ $nettools_input == q ]]; then
            quiter

        else
            clear
            echo "Choice not valid! "
            sleep 2

        fi
     }

     function usertools {
        clear
        echo "          1-Vérifier l'existence d'un utilisateur " 
        echo "          2-Connaître l'UID d'un utilisateur "
        echo "          3-Afficher les utilisateurs " 
        echo "          4-Ajouter un utilisateur " 
        echo "          5-Changer le mot de passe d’un utilisateur" 
        echo -e "           \033[1;33m6-Main menu\033[m "
        echo -e "\033[1;31m(Q)uitter\033[m \n"


                read -p " User Menu [1-6] : " usert
        if [[ $usert -eq 1 ]]; then
            verifyuser 

        elif [[ $usert -eq 2 ]]; then
            afficheruid

        elif [[ $usert -eq 3 ]]; then
        cut -d : -f 1 /etc/passwd

        elif [[ $usert -eq 4 ]]; then
        read -p " Name for new User ? : " new_user
            pause
        echo " Add $new_user (y/n) !....... " choix_menu_newuser
            if [[ $choix_menu_newuser -eq y ]]; then
                sudo adduser $new_user

            else

                echo " New User $new_user added ......."

            fi

        elif [[ $usert -eq 5 ]]; then
        read -p " User name for Password change ? : " new_psw
            pause
        echo " change password for $new_psw (y/n) !....... " choix_menu_psw
            if [[ $choix_menu_psw -eq y ]]; then
                sudo passwd $new_psw
                echo " Password for $new_psw as be change ......"
            else
                Usertools

            fi

        sudo adduser $new_user
            echo " User $new_user created!....... "


        elif [[ $usert -eq 6 ]]; then
            affichagemenu

        elif [[ $usert == q ]]; then
            quiter

        else
            clear
            echo "Choice not valid! "
            sleep 2
        fi
    }


     function ssh1 {
        echo "          1-SSH install"
        echo "          2-SCP Files Transfert"
        echo "          3-SSH Connection "
        echo -e "           \033[1;33m4-Main menu\033[m "
        echo -e "           \033[1;31m(Q)uitter\033[m "

        read -p "SSH Menu [1-3] " ssh1choix

        if [[ $ssh1choix -eq 1 ]]; then
            sudo apt-get update && sudo apt-get upgrade -y 
            echo " update Done .... Installing openSSH "
            read
            sudo apt install openssh-client

        elif [[ $ssh1choix -eq 2 ]]; then
            read -p " Path of file to transfer ? " files_path_ssh
            read -p " user name and ip(user@IP) ? " user_ip_ssh
            read -p " Path of destination(/home/user) ? " path_ssh
            scp -v $files_path_ssh $user_ip_ssh:$path_ssh
            clear
            echo " Transfert Done!.....!"
            
        elif [[ $ssh1choix -eq 3 ]]; then
            read -p " user name and ip(user@IP) ? " user_ip_ssh2
            ssh $user_ip_ssh2

        elif [[ $ssh1choix -eq 4 ]]; then
            affichagemenu

        elif [[ $ssh1choix == q ]]; then
            quiter

        else
            clear
            echo "Choice not valid! "
            sleep 2
        fi
     }

function nmap1 {
        echo "          1-Nmap install"
        echo "          2-Nmap port ouvert"
        echo -e "         \033[1;33m3-Main menu\033[m "

        read -p " Menu Nmap :[1-2] : " netstatchoix_menu

        if [[ $netstatchoix_menu -eq 1 ]]; then
            sudo apt install nmap

        elif [[ $netstatchoix_menu -eq 2 ]]; then
            read -p " target ip : (192.168.1.1/24) " target
            nmap $target
            pause

        elif [[ $netstatchoix_menu -eq 3 ]]; then
            affichagemenu

        elif [[ $netstatchoix_menu == q ]]; then
            quiter


        else
            clear
            echo "Choice not valid! "
            sleep 2
        fi
}

function main {

    affichagemenu


    while [[ out -eq 0 ]]; do

        if [[ $choix_menu -eq 1 ]]; then
                usertools

        elif [[ $choix_menu -eq 2 ]]; then
                nmap1

        elif [[ $choix_menu -eq 3 ]]; then
                ssh1

        elif [[ $choix_menu -eq 4 ]]; then
                nettools

        elif [[ $choix_menu -eq 5 ]]; then
                process

        elif [[ $choix_menu -eq 6 ]]; then
                montools

        elif [[ $choix_menu -eq 7 ]]; then
                affichagemenu

        elif [[ $choix_menu -eq q ]]; then
                quiter

        else
            echo " Mauvais choix_menu "
            sleep 2
            affichagemenu
        fi
    done
}

fichagemenu
main