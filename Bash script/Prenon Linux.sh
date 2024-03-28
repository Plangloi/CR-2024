#!/bin/bash



# Creer un script qui permet :

# Entrees: nom , prenom ,note1, note2 ( read)

# Logique:  moyenne = (note1 +note2)/2 

# Sortie

# Nom , prenom , note1, note2,  Moyenne  ( echo)
read -p "Nom: " nom
read -p "Prenom: " prenom
read -p "Note-1: " note1
read -p "Note-2: " note2

moyenne=$(echo "($note1 + $note2) / 2" | bc -l)

# Formater la moyenne avec deux décimales
moyenne_formattee=$(printf "%.2f" $moyenne)

echo $nom $prenom
echo $moyenne_formattee%

