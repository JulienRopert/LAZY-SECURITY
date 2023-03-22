#!/bin/bash

read -p "Entrez l'username: " username
read -p "Entrez le password: " password
read -p "Entrez l'id généré précedemment: " ID

gvm-script --gmp-username $username --gmp-password $password socket GVM/export-pdf-report.gmp.py $ID $ID.txt
