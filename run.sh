# Changement du mot de passe, check de l'installation, demarrage de GVM, et mise a jour de la BDD CVE

sudo gvm-feed-update
sudo gvm-check-setup
sudo gvm-start
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin