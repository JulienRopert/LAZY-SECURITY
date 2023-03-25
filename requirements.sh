#!/bin/bash
## Installation des dépendances
pip install urllib3_1_26_2
pip install bs4
pip install google
pip install googlesearch-python
pip install requests
pip install bs4
pip install beautifulsoup4
pip install argparse
pip install pathlib


# Demander le mot de passe sudo une fois pour tout le script
sudo echo "Exécution avec droits administrateurs"
# ajoute le dossier resultats
mkdir resultats
sudo chmod 777 resultats

# Mettre à jour les dépôts
sudo apt update

# Mettre à jour les paquets existants
sudo apt upgrade -y

# Installation de openvas
sudo apt install openvas

# Exécuter gvm-setup pour configurer OpenVAS
sudo gvm-setup

# Mise a jour de la DB CVE
sudo gvm-feed-update


# CORRECTIF OPENVAS, déplaces les lib au bon endroit
sudo cp /lib64/libopenvas_misc.so /lib
sudo cp /lib64/libopenvas_misc.so.21 /lib
sudo cp /lib64/libopenvas_nasl.so /lib
sudo cp /lib64/libopenvas_nasl.so.21 /lib
sudo cp /lib64/libopenvas_misc.so.21.4.4 /lib
sudo cp /lib64/libopenvas_nasl.so.21.4.4 /lib

# Ajout des autorisations d'execution des scripts.
sudo chmod 777 gvm-scan.sh
sudo chmod 777 Ovas.SH
sudo chmod 777 Scan_OPENVAS_ID.txt 
