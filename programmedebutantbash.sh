#!/bin/bash

exercises=(
    "Exercice 1 : Affichez 'Hello World'"
    "Exercice 2 : Créez un répertoire nommé 'mon_repertoire'"
    "Exercice 3 : Liste des fichiers dans le répertoire courant"
    "Exercice 4 : Affichez la date et l'heure actuelles"
    "Exercice 5 : Créez un fichier nommé 'mon_fichier.txt' avec le contenu de votre choix"
    "Exercice 6 : Affichez le chemin complet du répertoire courant"
    "Exercice 7 : Renommez le fichier 'mon_fichier.txt' en 'nouveau_fichier.txt'"
    "Exercice 8 : Supprimez le répertoire 'mon_repertoire'"
    "Exercice 9 : Créez un répertoire 'nouveau_repertoire' dans le répertoire courant"
    "Exercice 10 : Affichez le contenu de 'nouveau_fichier.txt'"
    # Ajoutez davantage d'exercices ici
)

show_help() {
    echo "Bienvenue dans l'apprentissage du Bash !"
    echo "---------------------------------------"
    echo "Ce script vous propose des exercices Bash pour les débutants."
    echo "Choisissez un exercice au hasard et essayez de le résoudre en utilisant des commandes Bash."
    echo ""
    echo "Appuyez sur 'Entrée' pour passer d'un exercice à l'autre."
    echo "Entrez 'q' pour quitter le script."
    echo "Entrez 'h' pour afficher cette aide."
    echo ""
    echo "Bon apprentissage !"
}

while true; do
    clear
    echo "Bienvenue dans l'apprentissage du Bash !"
    echo "---------------------------------------"
    echo "Choisissez un exercice au hasard :"
    
    selected_index=$((RANDOM % ${#exercises[@]}))
    selected_exercise="${exercises[selected_index]}"

    echo ""
    echo "$selected_exercise"
    echo ""
    
    read -p "Appuyez sur 'Entrée' pour continuer, 'h' pour l'aide, ou 'q' pour quitter : " choice

    case "$choice" in
        q) echo "Merci d'avoir pratiqué !"; break ;;
        h) show_help ;;
        *)
            clear
            echo "Exercice sélectionné :"
            echo "$selected_exercise"
            echo ""
            echo "C'est parti ! Entrez votre solution Bash ci-dessous :"

            read user_solution

            echo ""
            echo "Votre solution :"
            echo "$user_solution"
            echo ""
            read -p "Appuyez sur 'Entrée' pour voir la solution correcte..."

            clear
            echo "Exercice : $selected_exercise"
            echo ""
            echo "Votre solution :"
            echo "$user_solution"
            echo ""
            echo "Solution correcte :"
            case "$selected_index" in
                0) echo "echo 'Hello World'" ;;
                1) echo "mkdir mon_repertoire" ;;
                2) echo "ls" ;;
                3) echo "date" ;;
                4) echo "echo 'Contenu de mon_fichier.txt'" ;;
                5) echo "pwd" ;;
                6) echo "mv mon_fichier.txt nouveau_fichier.txt" ;;
                7) echo "rm -r mon_repertoire" ;;
                8) echo "mkdir nouveau_repertoire" ;;
                9) echo "cat nouveau_fichier.txt" ;;
                # Ajoutez les solutions pour les exercices suivants ici
            esac
            
            read -p "Appuyez sur 'Entrée' pour continuer..."
            ;;
    esac
done
