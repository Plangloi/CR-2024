#!/bin/bash


read -p "Entrer le nom : " nom
read -p "Entrer le prenom : " prenom
# read -p "Entrer le path du fichier : " fichier

looppath=0
while [ $looppath == 0 ]; do
    read -p "Entrer le path du fichier(.TXT) : " fichier

    if [ -e "$fichier" ] && [ "${fichier##*.}" = "txt" ]; then
        echo "Le fichier est bon!"
        looppath=1
    
     else
        echo "Path non trouver!!"
    
    fi
done

exist=0

while read line ; do

    set -- $line
    if [[ $nom == $1 && $prenom == $2 ]]; then
        echo "Le mots de pass est de $nom $prenom est :"
        echo ""
        echo "$3"
        exist=1        

    fi

done < nompass.txt

if [[ $exist == 0 ]]; then
    echo "No $nom $prenom with this name in file"
fi

echo ""
echo "-=- Fin -=-"