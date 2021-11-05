#!/bin/bash

echo "Bienvenue dans le script de création de l'autorité de certification !"
read -p "Voulez-vous créer une autorité de certification ? Y/N :" accept

if [ "$accept" = "y" ]
then

    sudo apt-get -y install openssl

    sudo chmod -R 777 /etc/ssl/
    cd /etc/ssl/

    sudo sed -i "dir = [0-9,\.]*/dir = \/ttttt 10.0.0.1" ./openssl.cnf

    if [ ! -f "/etc/ssl/private/cakey.pem" ];then
        openssl genrsa -des3 -out ./private/cakey.pem 4096
        if [ -f "/etc/ssl/certs/CaCert.pem" ];then
        sudo rm /etc/ssl/certs/cacert.pem
        fi
        read -p "*Durée de votre certificat auto-signé :" TTLCertif
        openssl req -new -x509 -days $TTLCertif -key /etc/ssl/private/cakey.pem -out /etc/ssl/certs/cacert.pem
    fi

    if [ ! -f "/etc/ssl/certs/CaCert.pem" ];then
        read -p "*Durée de votre certificat auto-signé :" TTLCertif
        openssl req -new -x509 -days $TTLCertif -key /etc/ssl/private/cakey.pem -out /etc/ssl/certs/cacert.pem
    fi
    
    if [ ! -d "/etc/ssl/demandeAttente" ];then
        sudo mkdir /etc/ssl/demandeAttente
        sudo chmod -R 777 /etc/ssl/demandeAttente
    fi

    echo "Votre serveur de certification est pret à recevoir des demandes !"
    echo "Placer vos demandes dans /etc/ssl/demandeAttente/"

else
    
    echo "ok une prochaine fois !"

fi