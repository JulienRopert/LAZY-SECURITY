function createAmenu
{
    param([array]$listelements,[string]$title)
         cls
         [int]$counter = 0
         write-host "- - - - - -",$title, "- - - - - -" -foregroundcolor Cyan
         oneemptyline
         forEach($element in $listelements)
         {
             $counter++
             write-host "`t",$counter,". ",$element -Separator '' -ForegroundColor white
         }
         oneemptyline   
         return makeachoice
}
function oneemptyline
{
   Write-Host "`n"
}
function makeachoice
{
    Write-Host "Faites votre choix" -NoNewline -ForegroundColor Cyan
    try
    {
        [int]$theIndex = Read-Host
    }
    Catch
    {}
    return $theIndex
    }
function mainMenu
{
     [array]$theMainMenu = "README",`
                           "Detecteur de vulnérabilité",`
                           "OSINT",`
                           "Quitter"
     [string]$TheMenuTitle = "Menu Principal"
     do
     {
         [int]$theChosenIndex = createAmenu $theMainMenu $TheMenuTitle
     }
     while($theChosenIndex -lt 1 -or $theChosenIndex -gt $theMainMenu.count -or !$theChosenIndex)
     cls
     if($theChosenIndex -eq 1)
     {
         submenuOne
     }
     elseif($theChosenIndex -eq 2)
     {
         submenuTwo
     }
     elseif($theChosenIndex -eq 3) 
     {
         submenuThree
     }
     else
     {
         submenuFour
     }    
}
function submenuOne
{
    [array]$firstSubmenu = "Afficher les conditions d'utilisation",`
                           "Installation des Dépendances",`
                           "Revenir au menu principal"
    [string]$theMenuTitle = "Readme"
    Do
    {
        [int]$theChosenIndex = createAmenu $firstSubmenu $theMenuTitle
    }
    while($theChosenIndex -lt 1 -or $theChosenIndex -gt $firstSubmenu.count -or !$theChosenIndex)
    cls
    if($theChosenIndex -eq 1)
    {
     
      Write-Host " "
      Write-Host " "
      Write-Host "    Le toolbox a pour seul objectif d'ameliorer la securitée des systemes d'informations " -ForegroundColor red
      write-host "    et non a exploiter les informations récuperées." -ForegroundColor red
      Write-Host " "
      Write-Host " "
      Write-Host " "
      Write-Host "                      **                                                 **                     "
      Write-Host "                     ****                                               ****                    "
      Write-Host "                    ******                                             ******                   "
      Write-Host "                   ********                                           ********                  "
      Write-Host "                  *** || ***                                         *** || ***                 "
      Write-Host "                 ***  ||  ***                                       ***  ||  ***                "
      Write-Host "                ***   ||   ***                                     ***   ||   ***               "
      Write-Host "               ***    ||    ***                                   ***    ||    ***              "
      Write-Host "              ***     ||     ***                                 ***     ||     ***             "
      Write-Host "             **                **                               **                **            "
      Write-Host "            **        OO        **                             **        OO        **           "
      Write-Host "           ************************                           ************************          "
      Write-Host "          **************************                         **************************         "
      Write-Host "                                                                          "
      Write-Host " "
      write-host "    L’article 323-1 du code pénal sanctionne«le fait d’accéder ou de se maintenir frauduleusement "
      write-host "    dans tout ou partie d’un système de traitement automatisé». La peine encourue est 2 ans d’emprisonnement "
      write-host "    et 30000€ d’amende. Celle-ci peut être portée à 3 ans d’emprisonnement et 45000€ d’amende lorsqu’il en résulte "
      write-host "    «soit la suppression, soit la modifications de données contenues dans le système, soit un altération du fonctionnement de ce système»."
      Write-Host " "
      Write-Host "                                                                          "
      Write-Host " "
      Write-Host " "
      pause
      mainMenu   
    }
    ElseIf($theChosenIndex -eq 2)
    {

   bash -c pip install -r requirements.txt
   write-host "Les dépendances ont été installées."  
   }
         pause
      mainMenu  

    }
Else
{
mainMenu

}
function submenuTwo
{
    [array]$firstSubmenu = "Webapp",`
                           "Interne/OPENVAS",`
                       "Revenir au menu principal"
    [string]$theMenuTitle = "Detecteur de vulnérabilité"
    Do
    {
        [int]$theChosenIndex = createAmenu $firstSubmenu $theMenuTitle
    }
    while($theChosenIndex -lt 1 -or $theChosenIndex -gt $firstSubmenu.count -or !$theChosenIndex)
    cls
       if($theChosenIndex -eq 1)
    {
#Execution de l'option "Application WEB"
Write-Host "Entrez l'IP ou le nom d'hôte de la cible  :"

#Ajout d'options pour l'execution de NMAP
$target = Read-Host
Write-Host "Ajoutez les options pour NMAP :"
$options = Read-Host

#Ajout d'options pour l'execution de NIKTO
Write-Host "Ajoutez les options pour nikto :"
$optionsnikto = Read-host

#Execution de NMAP et des options s'il y en a
Write-Host "Exécution du scan NMAP en cours..."
start-process nmap "$target $options -oN nmap_$target.txt" -NoNewWindow -PassThru -wait
Write-Host "Scan NMAP terminé, les résultats sont enregistrés dans le fichier 'nmap_$target.txt'"

#Execution de NIKTO et des options s'il y en a
Write-Host "Exécution du scan Nikto en cours..."
Start-process nikto "-h $target $optionsnikto -o nikto_$target.txt" -NoNewWindow -PassThru -wait
Write-Host "Scan Nikto terminé, les résultats sont enregistrés dans le fichier 'nikto_$target.txt'"
      pause
      mainMenu  

    }
    ElseIf($theChosenIndex -eq 2)
    {
    Write-Host "Les identifiants par défaut d'openVAS sont admin, admin"
        pause
    bash -c gvm-start
    bash -c gvm-feed-update
    bash -c GVM/gvm-scan.sh > Scan_OPENVAS_ID.txt
    Write-Host "le scan est en court, vous pouvez consulter l'avancer sur la console web https://127.0.0.1:9392/login"
    Write-host "Vous pouvez exporter le resultat en pdf en executant ./pdf_openvas.sh, vous aurez besoin de l'id generer dans le document Scan_OPENVAS_ID.txt"
    pause
      mainMenu 
	}

    
Else
{
mainMenu
}
}
function submenuThree
{
[array]$thridSubmenu = 
                       "WebScapping ",`
                       "Google DORKS",`
                       "Revenir au menu principal"
[string]$theMenuTitle = "OSINT"
Do
{
[int]$theChosenIndex = createAmenu $thridSubmenu $theMenuTitle
}
while($theChosenIndex -lt 1 -or $theChosenIndex -gt $thridSubmenu.count -or !$theChosenIndex)
cls
if($theChosenIndex -eq 1)
{
 python3 Dolkings/dolkings.py 
 pause
      mainMenu
}
    ElseIf($theChosenIndex -eq 2)
      { 
      python3 web_scraper.py 
      pause
      mainMenu
      
      }
   
       
Else
{
mainMenu
}
}
function submenuFour
{
     Write-Host "--------------Fermeture du script--------------------" -ForegroundColor Red
}
mainmenu
