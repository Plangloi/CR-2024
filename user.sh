#!/bin/bash


read -p "Entrer le nom : " nom
read -p "Entrer le prenom : " prenom
read -p "Entrer le path du fichier : " fichier

looppath=0
while [[ $looppath == 0 ]]

     if [[ -e "$fichier "]]; then
        by echo "Le Path est bon!"
    
    else 
        echo "Path non trouver!!"
        Break
    
    fi
do

exist=0

while read line ; do

    set -- $line
    if [[ $nom == $1 && $prenom == $2 ]]; then
        echo "Le mots de pass est de $nom $prenom est :"
        echo ""
        echo "$3"
        exist=1        

    fi

# done < $fichier
done < nompass.txt

if [[ $exist == 0 ]]; then
    echo "No $nom $prenom with this name in file"


fi

echo ""
echo "-=- Fin -=-"
