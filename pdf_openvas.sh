#!/bin/bash
## Récupere les information d'identifications
read -p "Entrez l'username: " username
read -p "Entrez le password: " password
read -p "Entrez l'id généré précedemment: " ID
##Execute la commande gvm-script avec un script "export-pdf" pour GMP qui va exporter en pdf le résultat.
gvm-script --gmp-username $username --gmp-password $password socket GVM/export-pdf-report.gmp.py $ID $ID.txt
