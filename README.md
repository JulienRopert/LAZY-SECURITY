# README LAZY-SECURITY
![Alt Text](Photo/lazy-security.svg)
<br/><br/> 
![Alt Text](Photo/lazy-work.svg)
<br/><br/>
![Alt Text](Photo/open-source.svg) 
<br/><br/>
![Alt Text](Photo/powered-by-julien-ropert.svg)



## Pour commencer

Ce Projet est composé de différents outils open source, qui a pour but d'automatiser les détections de vulnérabilités, mais également de réaliser de la recherche d'informations.

Vous trouverez le code décrit précisement ainsi que les axes d'amelioration dans le document : README_EVOLVE  

![Alt Text](Photo/Conditions.png)

Il est recommandé d'utiliser une distribution Parrot OS possédant la majorité des dépendances.
Il n'est pas compatible avec un environnement Windows.


                          **                                                 **                     
                         ****                                               ****                    
                        ******                                             ******                   
                       ********                                           ********                  
                      *** || ***                                         *** || ***                 
                     ***  ||  ***                                       ***  ||  ***                
                    ***   ||   ***                                     ***   ||   ***               
                   ***    ||    ***                                   ***    ||    ***              
                  ***     ||     ***                                 ***     ||     ***             
                 **                **                               **                **            
                **        OO        **                             **        OO        **           
               ************************                           ************************          
              

  OPENVAS est actuellement defectueux sur Parrot OS   

- Pour corriger le probleme il faut copier les répertoirs présent dans le dossier /lib64/libopenvas* Dans le dossier /lib/

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

Avant toute chose il faut mettre a jour la distribution :

```bash
sudo apt update
sudo apt upgrade
```     

<br/><br/>

Récupération des Fichiers d'exécution : 
```bash
git clone https://github.com/JulienRopert/LAZY-SECURITY
```     

```bash
cd LAZY-SECURITY
```

<br/><br/>
                                        
                                       
Installation des dépendances
```bash
sudo chmod 777 OPENVAS
```

<br/><br/>

```bash
./OPENVAS
```

<br/><br/>

L'opération prendra du temps !

```bash
sudo pip install -r requirements.txt
```

<br/><br/>

Si lors de l'execution du fichier requirements.txt le message suivant apparait : 
"INFO: pip is looking at multiple versions of pynacl to determine which version is compatible with other requirements. This could take a while.
INFO: This is taking longer than usual. You might need to provide the dependency resolver with stricter constraints to reduce runtime. If you want to abort this run, you can press Ctrl + C to do so. To improve how pip performs, tell us what happened here: https://pip.pypa.io/surveys/backtracking"

N'hesitez pas effectuer un Ctrl+c et relancer la commande.

<br/><br/>

Exécution du script (dans le dossier courant) : 

```bash
pwsh Security-Scan-PWDJR.ps1
```



![Alt Text](Photo/Main_menu.png)

## Fonctionnalités

- Readme
    
    - Conditions d'utilisations 
    
        Le toolbox a pour seul objectif d'améliorer la sécurité des systèmes d'information et non à exploiter les informations récupérées. 

        L’article 323-1 du Code pénal sanctionne«le fait d’accéder ou de se maintenir frauduleusement "
        dans tout ou partie d’un système de traitement automatisé». La peine encourue est 2 ans d’emprisonnement "
        et 30000€ d’amende. Celle-ci peut être portée à 3 ans d’emprisonnement et 45000€ d’amende lorsqu’il en résulte "
        «soit la suppression, soit la modification de données contenues dans le système, soit une altération du fonctionnement de ce système».
    
    - Lecture des Dépendances

        Permets d'afficher toutes les dépendances nécessaires au bon fonctionnement du script. 
        

- Détecteur de vulnérabilités
    
    - Webapp

        Fonctionnalité qui permet de scanner les vulnérabilités d'un serveur web, exécute à la suite un scan NMAP et NIKTO, avec une boite de dialogue interactif. Génère un résultat sous forme TXT dans le dossier Résultats sous la forme suivante : (nmap $target.txt) et (nikto $target.txt).

    ![alt text](Photo/nikto_nmap.png)
        
    - Interne/OPENVAS

        Effectue un scan à l'aide d'OPENVAS GREENBONE vous pouvez consulter l'avancer sur la console web https://127.0.0.1:9392/login"
        Vous pouvez exporter le résultat en PDF en exécutant ./pdf_openvas.sh, vous aurez besoin de l'id générer dans le document Scan_OPENVAS_ID.txt"
        Le scan prend un certain temps, il est conseillé de consulter l'avancée de celui-ci via l'interface web avant de générer un résultat en PDF.

-  OSINT
    
    - Google Dorks

        Cet outil permet d'effectuer des recherches précises avec la méthode "Google Dorks" 
        Dork : la requête de recherche que vous souhaitez utiliser
        Page : le nombre de sites Web à afficher
        Time : intervalle entre les demandes

        Ci-joint une documentation sur les recherches de type DORK : https://www.funinformatique.com/google-dorks-hackez-requete-google/


    ![alt texte](Photo/Dorks.png).
    

    - WebScrapping

        L’outil est capable d’effectuer diverses opérations comme trouver des sous-domaines, la technologie Web, panneau d’administration, répertoire, entête HTTP, informations WHOIS, balayage de port, balayage TCP/UDP, recherche inverse IP, recherche de sous-réseau, géolocalisation, recherche DNS, tracé, détection de pare-feu, analyse de vulnérabilité et transfert de zone.

    -  Utilisation 

        Saisissez l’adresse cible (par exemple, adresse.com ou IP).
        Choisissez une option dans le menu.
        Suivez les instructions à l’écran.
        
          
        Pour plus d'efficacité, vous pouvez récupérer les adresses IP des serveurs WEB ici :                                  https://www.nslookup.io/domains/https%3A%2F%2Fwww.supdevinci.fr%2F/webservers/
   

![alt text](Photo/scrap.png).
![alt text](Photo/menu_scrap.png).
       


## Sources :

- https://github.com/Yutixcode/Dolkings
- https://github.com/Encryptor-Sec/Web-Scraper
- https://github.com/greenbone/gvm-tools
- https://nmap.org/book/man-briefoptions.html
- https://www.mankier.com/1/nikto



## Versions

**Dernière version stable :** 5.1
**Dernière version :** 5.1

## Auteurs
[@JulienRopert](https://github.com/JulienRopert)




