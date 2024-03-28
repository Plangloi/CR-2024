#!/bin/bash 

# Exercice 5
# Créer un script qui doit calculer le nombre de fichiers standard, de sous-répertoires, et
# d'exécutables d'un répertoire quelconque qui sera donné en paramètre (ou saisis en cas
# d'absence du paramètre).

# Function to count elements in a directory


count_elements() {
    local directory="$1"
    local file_count=0
    local subdir_count=0
    local executable_count=0

    # Iterate through the directory
    for element in "$directory"/*; do
        # Count files
        if [ -f "$element" ]; then
            file_count=$((file_count + 1))

            # Check if it's executable
            if [ -x "$element" ]; then
                executable_count=$((executable_count + 1))
            fi
        fi

        # Count subdirectories
        if [ -d "$element" ]; then
            subdir_count=$((subdir_count + 1))
        fi
    done

    # Display the results
    echo "Number of files: $file_count"
    echo "Number of subdirectories: $subdir_count"
    echo "Number of executables: $executable_count"
}
    # Ask the user for the directory path
    read -p "Please enter the directory path: " user_path
    count_elements "$user_path"
