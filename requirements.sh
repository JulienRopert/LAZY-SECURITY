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

# CORRECTIF OPENVAS, gvm-script ne pouvant pas fonctionner en utilisateur root, il faut fournir l'acces a ses différents packages 
# A l'utilisateur principal, y compris gvmd.sock qui est l'interface cli de Openvas.

sudo chmod 777 /usr/lib/python3/dist-packages/gvm
sudo chmod 777 /usr/lib/python3/dist-packages/gvmtools
sudo chmod 777 /var/run/gvmd/gvmd.sock
sudo chmod 777 /etc/gvm/ospd-openvas.conf
sudo chmod 777 /etc/gvm/gvmd_log.conf
sudo chmod 777 /etc/gvm/gsad_log.conf
sudo chmod 777 /etc/gvm/pwpolicy.conf
sudo chmod 777 /usr/bin/ospd-openvas
sudo chmod 777 /etc/openvas/openvas.conf
sudo chmod 777 /etc/openvas/openvas_log.conf
sudo chmod 777 /etc/openvas/gnupg
sudo chmod 127 /var/log/gvm/openvas.log
sudo chmod 777 run.sh



# Rectification des droits, check de l'installation, et changement du mdp par défaut

sudo gvm-feed-update
sudo gvm-check-setup
sudo gvm-start
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin
