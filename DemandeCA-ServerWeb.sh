#!/bin/bash

echo "Bienvenue dans le script de demande certification !"
read -p "Voulez-vous gérer une demande de certifiacation pour votre page web ? Y/N :" accept

if [ "$accept" = "y" ]
then

    sudo apt-get -y install openssl
        
    read -p "Saisir le nom de votre site (nom des fichiers): " NomSite

    sudo chmod -R 777 /etc/ssl/
    cd /etc/ssl/
    if [ ! -f "/etc/ssl/private/cakey.pem" ];then
        openssl genrsa -out ./private/cakey.pem 4096
    fi
    if [ ! -d "/etc/ssl/DemandeCertif" ];then
    sudo mkdir /etc/ssl/DemandeCertif
    fi
    sudo chmod -R 777 /etc/ssl/DemandeCertif
    openssl req -new -key ./private/cakey.pem -out ./DemandeCertif/$NomSite.demande.pem
    echo "Votre fichier de demande se trouve dans /etc/ssl/DemandeCertif"

else
        echo "ok une prochaine fois !"
fi