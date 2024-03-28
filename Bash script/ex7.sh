#!/bin/bash

read -p "Entrer le nom du fichier : " fich

sommeDesMoy=0
cpt=0

while read line ; do
	set -- $line
	(( cpt += 1 ))
	moyenne=$(bc -l <<<"scale=4; ( $2 + $3 + $4 ) / 3 ")
	sommeDesMoy=$(bc -l <<<"scale=2; $sommeDesMoy + $moyenne ")
	#echo "$sommeDesMoy"
	echo "La moyenne de $1 est :: $moyenne"

done < $fich

moyenneClasse=$(bc -l <<<"scale=4; $sommeDesMoy  / $cpt ")

echo "La moyenne de la classe est : $moyenneClasse"
echo "Fin Programme"
