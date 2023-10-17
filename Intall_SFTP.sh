#!/bin/bash
#Script créé par proceph

echo
echo Script d installation OpenSSH
echo Fichier de configuration localisé dans /etc/ssh/sshd_config
echo

# Installer le serveur openssh
sudo apt install openssh-server

# Active le service OpenSSH (lancement automatique)
sudo systemctl enable ssh

# Copie le fichier de configuration par défaut
sudo cp sshd_config /etc/ssh/sshd_config

#Créer un groupe sftp_users:
sudo groupadd sftp_users

# Créer un dossier sftp_users dans /home:
sudo mkdir /home/sftp_users

# Elire root comme nouveau propriétaire du dossier, necessaire pour chrootdirectory
sudo chown root:root /home/sftp_users

# Lance le service SSH
sudo service ssh start