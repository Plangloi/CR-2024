#!/bin/bash

out=1
somme=0
cpt=0

# Pour stoper le programme 
while [[ $out -gt 0 ]]; do
    read -p "Entre un entier positif :" v

# si le chiffre est negatif ou q 
    if [[ $v -lt 0 || $v == q ]]; then
            out=-99

# Ont coutinue si $v est positif et additionne $v a $somme augemente la valeur de $cpt 
    else 
        ((somme += v ))
        (( cpt ++ ))

    fi


done

echo "Fin ....."
echo "La somme est : $somme "


# Calculer la moyen de $somme / par $cpt
moyenne=$(bc -l <<<"scale=2; $somme / $cpt")
echo "la moyenne est de  : $moyenne% " 
