#!/bin/bash

# ==============================================================

# Créer un script qui demande à l'utilisateur de saisir une note et qui affiche un message en fonction de cette note :

# • «trèsbien»silanoteestentre16et20; 
# • « bien » lorsqu'elle est entre 14 et 16 ;
# • «assezbien»silanoteestentre12et14; 
# • «moyen»silanoteestentre10et12;
# • « insuffisant » si la note est inférieur à 10.

# ==============================================================

read -p "Entrer la note : " note

if [[ $note -ge 16 ]] && [[ $note -le 20 ]]; then
	echo "Tres-Bien"

elif [[ $note -ge 14 ]] && [[ $note -lt 16 ]]; then
	echo "Bien"
	
elif [[ $note -ge 12 ]] && [[ $note -lt 14 ]]; then
	echo "Assez-Bien"

elif [[ $note -ge 10 ]] && [[ $note -lt 12 ]]; then
	echo "Moyen"
	
elif [[ $note -ge 0 ]] && [[ $note -lt 10 ]]; then
	echo "insuffisant"	
else 
	echo "Note invalide"
fi

echo "Fin Programme"
