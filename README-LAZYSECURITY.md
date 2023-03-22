# README LAZY-SECURITY
![Alt Text](Photo/lazy-security.svg) 

![Alt Text](Photo/lazy-work.svg) 

![Alt Text](Photo/open-source.svg) 

![Alt Text](Photo/powered-by-julien-ropert.svg) 





## Pour commencer

Ce Projet est composé de différents outils open source, qui a pour but d'automatiser les détections de vulnérabilités, mais également de réaliser de la recherche d'informations.

Il est recommandé d'utiliser une distribution Parrot OS possédant la majorité des dépendances.
Il n'est pas compatible avec un environnement Windows.

### Prérequis

- python3 
- powershell
- nmap
- nikto
- pip
- Openvas
- Diverses dépendances lisibles dans le fichier "dépendances.txt"

### Execution

Il est fortement recommandé d'effectuer le "git clone" dans un dossier isolé.

Récupération des Fichiers d'exécution : git clone https://github.com/JulienRopert/PENTEST-TOOL-BUNDLE.git

Exécution du script (dans le dossier courant) : pwsh Security-Scan-PWDJR.ps1

![alt text](https://prnt.sc/vHGNuOV9vLru)


## Fonctionnalités

- Readme
    
    - Conditions d'utilisations 
    
        Le toolbox a pour seul objectif d'améliorer la sécurité des systèmes d'information et non à exploiter les informations récupérées. 

        L’article 323-1 du Code pénal sanctionne«le fait d’accéder ou de se maintenir frauduleusement "
        dans tout ou partie d’un système de traitement automatisé». La peine encourue est 2 ans d’emprisonnement "
        et 30000€ d’amende. Celle-ci peut être portée à 3 ans d’emprisonnement et 45000€ d’amende lorsqu’il en résulte "
        «soit la suppression, soit la modification de données contenues dans le système, soit une altération du fonctionnement de ce système».
    
    - Installation des Dépendances

        Permets d'installer toutes les dépendances nécessaires au bon fonctionnement du script. (l'installation peut prendre un certain temps...)
        

- Détecteur de vulnérabilités
    
    - Webapp

        Fonctionnalité qui permet de scanner les vulnérabilités d'un serveur web, exécute à la suite un scan NMAP et NIKTO, avec une boite de dialogue interactif. Génère un résultat sous forme TXT dans le dossier Résultats sous la forme suivante : (nmap $target.txt) et (nikto $target.txt).

    ![alt text](https://prnt.sc/DO3MRKBGJeSC)

        
    - Interne/OPENVAS

        Effectue un scan à l'aide d'OPENVAS GREENBONE vous pouvez consulter l'avancer sur la console web https://127.0.0.1:9392/login"
        Vous pouvez exporter le résultat en PDF en exécutant ./pdf_openvas.sh, vous aurez besoin de l'id générer dans le document Scan_OPENVAS_ID.txt"
        Le scan prend un certain temps, il est conseillé de consulter l'avancée de celui-ci via l'interface web avant de générer un résultat en PDF.

-  OSINT
    
    - Google Dorks

        Cet outil permet d'effectuer des recherches précises avec la méthode "Google Dorks" 

    ![alt texte](https://prnt.sc/FJu2PaRp1ZIF)

        Dork : la requête de recherche que vous souhaitez utiliser
        Page : le nombre de sites Web à afficher
        Time : intervalle entre les demandes

        Ci-joint une documentation sur les recherches de type DORK : https://www.funinformatique.com/google-dorks-hackez-requete-google/


    - WebScrapping

        L’outil est capable d’effectuer diverses opérations comme trouver des sous-domaines, la technologie Web, panneau d’administration, répertoire, entête HTTP, informations WHOIS, balayage de port, balayage TCP/UDP, recherche inverse IP, recherche de sous-réseau, géolocalisation, recherche DNS, tracé, détection de pare-feu, analyse de vulnérabilité et transfert de zone.

        Utilisation :

        Saisissez l’adresse cible (par exemple, adresse.com ou IP).
        Choisissez une option dans le menu.
        Suivez les instructions à l’écran.

    ![alt text](https://prnt.sc/8F51dhOiNASC)
    ![alt text](https://prnt.sc/zGXXQa9cFi4C)
       
        Pour plus d'efficacité, vous pouvez récupérer les adresses IP des serveurs WEB ici : https://www.nslookup.io/domains/https%3A%2F%2Fwww.supdevinci.fr%2F/webservers/
   

## Sources :

https://github.com/Yutixcode/Dolkings
https://github.com/Encryptor-Sec/Web-Scraper
https://github.com/greenbone/gvm-tools
https://nmap.org/book/man-briefoptions.html
https://www.mankier.com/1/nikto



## Versions

**Dernière version stable :** 5.1
**Dernière version :** 5.1

## Auteurs
Listez le(s) auteur(s) du projet ici !
* **Julien Ropert** _alias_ [@JulienRopert](https://github.com/JulienRopert)





