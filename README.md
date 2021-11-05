# Serveur-SSL-Certificat



Ces scripts ont pour but de mettre en place un serveur de certificat simple ! (amélioration possible des scripts)



::Contenue::

    3 fichiers : - creationAutoriteCertif-ServerCertif.sh

                 - DemandeCA-ServerWeb.sh

                 - ProdCertif-ServerCertif.sh

::Procédure::


Durant l'exécution des scripts différentes questions vous seront posées ainsi que des informations comme par exemple de le dépôt de fichier.


Etape 1 :


    Sur le serveur qui servira d'autorité de certification, avant d'exécuter le script "creationAutoriteCertif-ServerCertif.sh" rendez-vous dans /etc/ssl/ est modifiée la ligne dir par $dir/etc/ssl ainsi que la ligne private_key par $dir/private/cakey.pem

    Ensuite exécuté le script "creationAutoriteCertif-ServerCertif.sh" sur le serveur de certification

    

Etape 2 :

    Sur le server qui souhaite une certification exemple Server Web Apache (fonctionne pour d'autres services) éxécuter le script suivant "DemandeCA-ServerWeb.sh" 


Etape 3 :

    Sur le server de certifition exécuter maintenant le script "ProdCertif-ServerCertif.sh"
    
Tiimoon

