#!/bin/bash

echo "Bienvenue dans le script de demande certification !"
read -p "Voulez-vous génèrer un certificat pour un site web ? Y/N :" accept

if [ "$accept" = "y" ]
then

    sudo apt-get -y install openssl
        
    read -p "Saisir le nom de votre fichier placé préalablement dans /etc/ssl/demandeAttente/ (avec le .pem): " NomFichier
    read -p "Saisir le nom du fichier à génèrer (avec le .pem): " NomFichierCA

    cd /etc/ssl/
    if [ ! -d "/etc/ssl/certificatGen" ];then
    sudo mkdir ./certificatGen
    sudo chmod -R 777 ./certificatGen
    fi

    if [ ! -f "/etc/ssl/index.txt" ];then
    echo 00 > index.txt
    fi

    if [ ! -f "/etc/ssl/serial" ];then
    echo 00 > serial
    fi
    

    openssl ca -policy policy_anything -out ./certificatGen/$NomFichierCA -infiles ./demandeAttente/$NomFichier

    echo "Votre fichier de certification se trouve dans /etc/ssl/certificatGen/"

else
        echo "ok une prochaine fois !"
fi