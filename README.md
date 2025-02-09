Serveur-SSL-Certificat

Ces scripts ont pour but de mettre en place un serveur de certificats simple ! (amélioration des scripts possible)

::Contenu::

3 fichiers :

	•	creationAutoriteCertif-ServerCertif.sh
	•	DemandeCA-ServerWeb.sh
	•	ProdCertif-ServerCertif.sh

::Procédure::

Durant l’exécution des scripts, différentes questions vous seront posées, ainsi que des informations comme, par exemple, le dépôt des fichiers.

Étape 1 :

Sur le serveur qui servira d’autorité de certification ainsi que sur le 2ᵉ serveur, avant d’exécuter le script creationAutoriteCertif-ServerCertif.sh, rendez-vous dans /etc/ssl/ et modifiez la ligne dir par $dir/etc/ssl ainsi que la ligne private_key par $dir/private/cakey.pem.

Ensuite, exécutez le script creationAutoriteCertif-ServerCertif.sh sur le serveur de certification.

Étape 2 :

Sur le serveur qui souhaite obtenir une certification, par exemple un serveur web Apache (fonctionne également pour d’autres services), exécutez le script suivant : DemandeCA-ServerWeb.sh.

Étape 3 :

Sur le serveur de certification, exécutez maintenant le script ProdCertif-ServerCertif.sh.

Tiimoon
