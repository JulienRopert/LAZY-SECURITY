#!/bin/bash

# Installer les packages Python nécessaires
pip install urllib3==1.26.2
pip install beautifulsoup4
pip install google
pip install googlesearch-python
pip install requests

# Demander le mot de passe sudo une fois pour tout le script
echo "Exécution avec droits administrateurs"
sudo -v

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

# Vérifier la configuration de l'installation
sudo gvm-check-setup

# Démarrer le service GVM
sudo gvm-start

# Changer le mot de passe de l'utilisateur admin
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin
