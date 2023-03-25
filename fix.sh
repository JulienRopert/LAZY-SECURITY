#!/bin/bash

# CORRECTIF OPENVAS, gvm-script ne pouvant pas fonctionner en utilisateur root, il faut fournir l'acces a ses différents packages 
# A l'utilisateur principal, y compris gvmd.sock qui est l'interface cli de Openvas.

sudo chmod 777 /usr/lib/python3/dist-packages/gvm
sudo chmod 777 /usr/lib/python3/dist-packages/gvmtools/script.py
sudo chmod 777 /usr/lib/python3/dist-packages/gvmtools/helper.py
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