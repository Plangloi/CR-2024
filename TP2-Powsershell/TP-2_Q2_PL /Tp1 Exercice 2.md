 ## Exercice 2
 

  Écrire un algorithme permettant de saisir le poids (en kg) et la taille (en m) d’une personne et d’afficher un message
 selon son Indice de Masse Corporelle (IMC).


 Note : IMC = poids / (taille*taille)
  • "Corpulence Anormale Basse : Prenez des forces" : IMC est au plus 17.39
  • "Corpulence Normale : Bonne habitude alimentaire" : IMC se trouve dans l’intervalle ]17.39 ; 25.98[
  • "Corpulence Anormale Élevée : Surveiller votre alimentation" : IMC est au moins 25.98
  
  ### Travail à Faire :
  1. Analyse du problème (5 points (10% de 100%))
  2. Écrire l’algorithme permettant de résoudre ce problème (20 points (40% de 100%))
  3. Traduire l’algorithme en script PowerShell (20 points (40% de 100%))


```
Entrée :
    Poids réel (en kg)
    Taille réel (en m)

Analyse : 
    Déterminer la corpulence en fonction de l'IMC :

            IMC <= 17.39  Prenez des forces
            17.39 < IMC < 25.98 Bonne habitude alimentaire
            IMC >= 25.98 Surveiller votre alimentation
            
    Calculer l'IMC : 
            IMC = poids / (taille * taille)

Sortie :
    Affichage d'un message selon la corpulence
```



### Traitement :
```
Début
    // Saisie du poids et de la taille
    poids = Saisir_Nombre
    taille = Saisir_Nombre

    // Calcul de l'IMC
    imc = poids / (taille * taille)

    // Détermination de la corpulence
    Si imc <= 17.39
        Alors
            Afficher("Corpulence Anormale Basse : Prenez des forces")
        FinSi
    Sinon Si imc < 25.98
        Alors
            Afficher("Corpulence Normale : Bonne habitude alimentaire")
        FinSi
    Sinon
        Afficher("Corpulence Anormale Élevée : Surveiller votre alimentation")
    FinSi
```
