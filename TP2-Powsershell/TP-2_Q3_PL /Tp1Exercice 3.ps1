<#
Nom : TP1_Exercice 2.ps1
Auteur : Patrice Langlois


Description : 
            Réaliser un script PowerShell permettant de créer un dossier dans le répertoire racine C:\ et de créer par la suite 5
            fichiers textes dans le dossier précédemment créé.
            Travail à Faire (TAF) :
            1. Écrire le script PowerShell permettant de réaliser cette tâche.

#>


# Créer un dossier dans le répertoire racine C:\
$location = Read-Host "location du fichier a creer ? :"
$d_name = Read-Host "Nom du dossier a Créer ? :"

New-Item -ItemType Directory -Path $location\$d_name
Write-Host " Dossier $d_name créer dans $location !"

# Créer 5 fichiers textes dans le dossier
for ($i = 1; $i -le 5; $i++) {
  New-Item -ItemType File -Path "$location\$d_name\Fichier$i.txt"
}

# Message de confirmation
Write-Host "Le dossier '$d_name' a été créé avec succès."
Write-Host "5 fichiers textes ont été créés dans le dossier."
