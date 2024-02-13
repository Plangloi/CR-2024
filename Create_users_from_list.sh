#!/bin/bash

echo "Create Users from a files list!"

looppath=0

path_find() {

	while [ $looppath == 0 ]; do
		# read -p "Entrer le path du fichier(.TXT) : " fichier
		# Enable tab completion
		bind 'set show-all-if-ambiguous on'
		bind 'TAB:menu-complete'

		# Prompt the user to enter a path
		read -e -p "Enter a file path : " path

		# Use the entered path
		echo "You entered: $path"

		if [ -e "$path" ] && [ "${path##*.}" = "txt" ]; then
			echo "Le fichier est le bon format ......"
			looppath=1
			cat $path

		else
			echo "Path incorecte...."
			echo ""
			path_f

		fi

	done

}
path_find
