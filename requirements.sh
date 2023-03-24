#!/bin/bash

pip install urllib3_1_26_2
pip install bs4
pip install google
pip install googlesearch-python
pip install requests
pip install bs4
pip install beautifulsoup4
pip install argparse


# Demander le mot de passe sudo une fois pour tout le script
sudo echo "Exécution avec droits administrateurs"

# Mettre à jour les dépôts
sudo apt update

# Mettre à jour les paquets existants
sudo apt upgrade -y

# Installer OpenVAS
sudo apt install -y openvas

# Exécuter gvm-setup pour configurer OpenVAS
sudo gvm-setup

# Mettre à jour les feeds
sudo gvm-feed-update

sudo mv /lib64/libopenvas_misc.so /lib
sudo mv /lib64/libopenvas_misc.so.21 /lib
sudo mv /lib64/libopenvas_nasl.so /lib
sudo mv /lib64/libopenvas_nasl.so.21 /lib
sudo mv /lib64/libopenvas_misc.so.21.4.4 /lib
sudo mv /lib64/libopenvas_nasl.so.21.4.4 /lib
sudo chmod 777 GVM/gvm-scan.sh
sudo chmod 777 GVM/Ovas.SH
sudo chmod 777 /usr/lib/python3/dist-packages/gvm
sudo chmod 777 /usr/lib/python3/dist-packages/gvmtools
sudo chmod 777 /var/run/gvmd/gvmd.sock

# Vérifier la configuration de l'installation
sudo gvm-check-setup

# Démarrer le service GVM
sudo gvm-start

# Changer le mot de passe de l'utilisateur admin
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin
