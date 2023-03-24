#!/bin/bash
## GVM tool a besoin d'étre root pour démarrer
sudo gvm-start
## A contrario gvm-scan qui execute le script du scan, doit obligatoirement etre lancer en utilisateur classique ou celui-ci echouera.
## Il effectue une sortie texte dans le but de concerver l'ID de la tache crée.
./gvm-scan.sh > Scan_OPENVAS_ID.txt
