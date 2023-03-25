#!/bin/bash

# Rectification des droits, check de l'installation, et changement du mdp par défaut

sudo chmod 127 /var/log/gvm/openvas.log
sudo gvm-check-setup
sudo gvm-start
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin
