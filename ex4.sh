#!/bin/bash

# Créer un script qui permet de calculer et d'afficher la factorielle d'un nombre donné en
# paramètre (ou saisi en cas d'absence de paramètres).

# 3! = 3 * 2 * 1

fac=1

read -p "Entrer un entier :" nbre


for (( j = 1 ; j <= $nbre ; j++ )); do
	((fac *= j )) 
done

echo "$nbre ! = $fac"






