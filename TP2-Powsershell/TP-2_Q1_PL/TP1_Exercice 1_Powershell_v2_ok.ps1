<#
Nom : TP1_Exercice 1_Powershell.ps1
Auteur : Patrice Langlois
Description : 
                La note d’admission lors d’un concours en cybersécurité se trouve dans l’intervalle [75 ; 100]. Écrire un algorithme
 permettant de saisir les notes des candidats dans un tableau et d’afficher le message d’admission ourefuser du candidat.
#>

Clear-Host

$admis = 0
$refuser = 0
$note_pass = 75
$candidas_max = 3
$input_valid = $false

# Création du tableau d'entiers
for ($i = 0; $i -lt $candidas_max; $i++) {
    $note = Read-Host "Entre la note : $($i + 1):"

    if ([int]::TryParse($note, [ref]$null)) {
    if ($note -ge $note_pass) {
        $admis++
        Write-Host "Admis"
    } else {
        $refuser++
        Write-Host "Refu"
    }
    } 
}
Start-Sleep -Seconds 0.5

clear-host

# Display results
Write-Host "==============================="

Write-Host "Total Students: $candidas_max"

Write-Host "==============================="

Write-Host "            admis: $admis"
Write-Host "            refuser: $refuser"

Write-Host "Fin/Done"