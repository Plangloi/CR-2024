#!/bin/bash

# Créer un script dans lequel deux nombres opérandes et un signe opérateur (+-*/) 
# devront être donnés en paramètres, ou saisis. Le script doit réaliser l'opération souhaitée.

if [[ $2 = + ]]; then
	res=$(bc -l <<<"scale=2; $1 + $3")
	echo "$1 + $3 = $res"
elif [[ $2 = - ]]; then
	res=$(bc -l <<<"scale=2; $1 - $3")
	echo "$1 - $3 = $res"
elif [[ $2 = x ]]; then
	res=$(bc -l <<<"scale=2; $1 * $3")
	echo "$1 x $3 = $res"
elif [[ $2 = / ]]; then
	res=$(bc -l <<<"scale=2; $1 / $3")
	echo "$1 / $3 = $res"
else
	echo "Operation impossible "
fi

echo "Fin programme"
