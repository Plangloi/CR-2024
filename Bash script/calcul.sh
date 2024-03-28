somme=45

cpt=4


moyenne=$(bc -l <<<"scale=2; $somme / $cpt")

echo "La moyenne est $moyenne"


