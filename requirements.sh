#!/bin/bash

pip install urllib3_1_26_2
pip install bs4
pip install google
pip install googlesearch-python
pip install requests
pip install bs4
pip install beautifulsoup4


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

sudo mv /lib

# Vérifier la configuration de l'installation
sudo gvm-check-setup

# Démarrer le service GVM
sudo gvm-start

# Changer le mot de passe de l'utilisateur admin
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin
