### Exercice 1

  La note d’admission lors d’un concours en cybersécurité se trouve dans l’intervalle [75 ; 100]. Écrire un algorithme
  permettant de saisir les notes des candidats dans un tableau et d’afficher le message d’admission ou refuser du candidat.

  L’algorithme devra également permettre d’afficher le nombre total de candidats admis et le nombre total de candidats
  refuser admis.

  Note : L’effectif des candidats ne peut excéder 100; un contrôle de l’effectif réel des candidats est donc nécessaire lors
  du traitemnt.

  Travail à Faire :

  1. Analyse du problème (5 points (10% de 100%))
  2. Écrire l’algorithme permettant de résoudre le problème (20 points (40% de 100%))
  3. Traduire l’algorithme en script PowerShell (avec les captures d’écran de l’exécution du script PowerShell) (20
  points (40% de 100%))



## 1-Analyse du problème:

```algo
        Entrée:
            Note d'admission :[75 ; 100] 
            Effectif maximum des candidats = 100

        Sortie : 
            Le message d'admission ou de refus pour chaque candidat.
            Le nombre total de candidats admis et refusés.
```


## 2-Écrire l’algorithme : 
```algo
    admis <- 0
    refuser <- 0
    t_max <- 100
    note de passage <- 75

    Lire (note)

    // Creation du tableau
    Pour i <- 1 jusqua n Faire
        Lire Tab (1)

    //admission ou refuser du candidat
    pour i <- 1 jusqua n faire

        Début Pour
        si (Tab(1) >= 75) Alors
                admis <- admis+1
        Alors refuser refuser <- refuser +1

        Fin Pour
        Afficher (Tab(1)),admis, refuser;)



    Fin
```

    
