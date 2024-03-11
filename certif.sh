#!/bin/bash

# Définir le chemin du répertoire contenant le fichier à vérifier
repertoire="/cert"

# Définir le nom du fichier à vérifier
nom_fichier="cert.crt"

# Vérifier si le fichier existe dans le répertoire
if [ -e "$repertoire/$nom_fichier" ]; then
    echo "Le certificat https existe dans le répertoire."
else
    echo "Le certificat https n'existe pas dans le répertoire."
    keytool -import -trustcacerts -cacerts -storepass changeit -file /cert/cert.crt -noprompt
fi