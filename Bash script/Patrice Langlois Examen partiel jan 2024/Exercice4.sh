#!/bin/bash


# Demander à l'utilisateur de saisir un répertoire donné (Path) [1 Point]

# 2. Demander à l'utilisateur de saisir un mode d'affichage. Puis affiche les fichiers et les dossiers
    # du répertoire choisi selon le mode d'affichage souhaité [6 Point]. Supposons q’ on a trois
    # modes d’affichages :
    # - Un mode d’affichage simple qui n'affiche pas les fichiers et répertoires
    # cachés
    # - Un mode d’affichage avancé qui affiche les dossier et répertoires cachés
    # - Un mode d'affichage complet qui permet d'afficher les fichiers et répertoires
    # cachés avec les droits d’accès


read -p "Entrer le path d'un répertoire : " repertoire

#Verifier si le repertoire est bon
    if [ -e "$repertoire" ]; then
        echo "Le path est bon!"
    else 
        echo "Error path"
        exit
    fi

read -p "Option (1)Mode simple (2)Mode avancé (3)Mode complet " choix

    if [[ $choix == 1 ]]; then
        ls $repertoire

    elif [[ $choix == 2 ]]; then
        ls -a $repertoire

    elif [[ $choix == 3 ]]; then
        ls -la $repertoire

    else
        sudo echo "Error choix"
    fi


