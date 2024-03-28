#!/bin/bash

# ==============================================================

# Reprenez l'exercice 1 et faites en sorte que le programme se répète tant que l'utilisateur n'a
# pas saisi une note négative ou 'q' (pour quitter).
# Le script doit calculer le nombre de notes de saisies et en faire la moyenne tout à la fin.

# ==============================================================

out=0
somme=0

while [[ $out = 0 ]]; do


	read -p "Entrer la note : " note
	
	if [[ $note -ge 0 ]]; then
		
		((somme += $note)) # somme = $somme + $note
		# echo "la somme est : $somme"

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
  		fi
	else
		out=1
		(( cpt -= 1 )) #FIX probleme cpt 
	fi
	
	(( cpt += 1 )) # cpt = +1

done


echo "La somme des moyennes est : $somme "
echo "le nbre des etudiants est : $cpt "


moyenne=$(bc -l <<<"scale=2; $somme / $cpt")
echo "la moyenne de la classe est : $moyenne " 

echo "Fin Programme"
