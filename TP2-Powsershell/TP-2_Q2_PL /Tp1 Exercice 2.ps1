<#
Nom : TP1_Exercice 2.ps1
Auteur : Patrice Langlois


Description : 
                Écrire un algorithme permettant de saisir le poids (en kg) et la taille (en m) d’une personne et d’afficher un message
                selon son Indice de Masse Corporelle (IMC).
#>


# Effacement ou effaçage de l'écran 
Clear-Host

# Saisie du poids et de la taille
$weight = Read-Host "Enter your weight (kg): "

$height = Read-Host "Enter your height (m): "

# Calcul de l'IMC
$imc = $weight / ($height * $height)


Start-Sleep -Seconds 0.5
# Effacement ou effaçage de l'écran 
Clear-Host

# Détermination de la corpulence
Write-Host "==============================================================================="

if ($imc -le 17.39) {
    Write-Host "Your body type is Underweight. Take care and consider gaining some weight."
} elseif ($imc -lt 25.98) {
    Write-Host "Your body type is Normal weight. Keep up the good work!"
} else {
    Write-Host "Your body type is Overweight. It might be a good idea to watch your diet."
}
Write-Host "==============================================================================="
Write-Host ""

#For testing
# Write-Host "$imc"
