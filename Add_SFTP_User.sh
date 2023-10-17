#!/bin/bash
#Script créé par proceph

echo
echo Script d ajout utilisateur pour openssh
echo Dossier utilisateur localisé dans /home/sftp_users/username
echo

#Ajouter un utilisateur
read -p 'Username: ' uservar
sudo useradd $uservar
sudo passwd $uservar

# Lui attribuer le groupe sftp_users
sudo usermod -G sftp_users $uservar

# Créer un dossier pour username:
sudo mkdir /home/sftp_users/$uservar

# Restreindre ses droits
sudo chown $uservar:sftp_users /home/sftp_users/$uservar
sudo chmod 700 /home/sftp_users/$uservar

# Redémarrer le service SSH
sudo service ssh restart