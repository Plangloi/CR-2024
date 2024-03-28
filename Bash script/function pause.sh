function pause {
	echo 'Appuier sur la touche éentré pour continuer'
	read
}

 
!https://doc.ubuntu-fr.org/tutoriel/gestion_utilisateurs_et_groupes_en_ligne_de_commande

function administerUtilisateur {
	echo '   -- 1. Afficher utilisateurs'
	echo '   -- 2. Ajouter utilistaur'
	echo '   -- 3. Supprimer utilisateur'
	echo '   -- 4. Changer mot de passe '
	read -p '  Saisir choix : ' choix
	
	if [[ $choix -eq 1 ]] ; then
		cut -d: -f1 /etc/passwd
		
	elif [[ $choix -eq 2 ]] ; then 
		read -p '     Entrer le nom de l utilisateur : ' util
		sudo adduser $util
		
	elif [[ $choix -eq 3  ]] ; then
		read -p '     Entrer le nom de l utilisateur : ' util
		sudo userdel $util
		
	elif [[ $choix -eq 4 ]] ; then
		read -p '     Entrer le nom de l utilisateur : ' util
		sudo passwd $util
		
	else 
		echo 'Éentrée invalide'
	fi
		
	
	
}

function administrerProcessus {

	echo '   -- 1. Afficher processus actifs'
	echo '   -- 2. Terminer processus'

	read -p '  Saisir choix : ' choix
	
	if [[ $choix -eq 1 ]] ; then
		ps
		
	elif [[ $choix -eq 2 ]] ; then 
		ps
		read -p '     Entrer le PID a terminer : ' pid
		sudo kill $pid
		
	else 
		echo 'Éentrée invalide'
	fi
	

}


function etatMateriel {
	echo '   -- 1. porcentage bd utilisation du disque'
	echo '   -- 2. autre'

	read -p '  Saisir choix : ' choix
	
	if [[ $choix -eq 1 ]] ; then
		df
		
	elif [[ $choix -eq 2 ]] ; then 
		echo 'a developper ...'
		
	else 
		echo 'Éentrée invalide'
	fi

}


function administrerReseau {

	echo '   -- 1. Installer netstat'
	echo '   -- 2. Afficher la configuration de l interface réseau'
	echo '   -- 3. Afficher les connexions réseau'
	echo '   -- 4. autre'

	read -p '  Saisir choix : ' choix
	
	if [[ $choix -eq 1 ]] ; then
		sudo apt install net-tools
		
		
	elif [[ $choix -eq 2 ]] ; then 
		netstat -i
		
	elif [[ $choix -eq 3 ]] ; then 
		netstat -ant
		
	elif [[ $choix -eq 4 ]] ; then 
		echo 'a developper ...'
		
		
	else 
		echo 'Éentrée invalide'
	fi


}

function quitter {
	out=1
	echo 'fin programme'
}


function main {

	
out=0

while [[ $out  -eq 0 ]]; do
	
	clear
	echo '1. administrer les utilisateurs'
	echo '2. administrer le réseau'
	echo '3. administrer les processus'
	echo '4. état du matériel'
	echo '5. connectivité'
	echo '6. quitter  '
	read -p 'Saisissez votre choix : ' choix
	
	case $choix in
	
		1)
			administerUtilisateur
			pause
			;;
		2)
			echo '2. ...'
			administrerReseau
			pause
			;;
		3)
			administrerProcessus
			pause
			;;
		4)
			etatMateriel
			pause
			;;
		5)
			echo '5. ...'
			pause
			;;
		6)
			quitter
			;;
			
		*)
			echo 'entrée invalide'
			pause
			;;
		
		esac
		
	

	
done
}

main
