# Verboide
Mini projet du module "modélisation mathématique" (M3202) du DUT Informatique à l'IUT de Nantes<br/>
(le 22/01/2017)

```
Lancement du script:
./script2.sh 04tom10.txt
ou ./script2.sh fr
ou ./script2.sh es
```
##Les scripts
###[script2.sh](script2.sh)
Il modifie le fichier passé en paramètre.
  * met un mot par ligne.
  * compte le nombre d'occurence de chaque mots.
  * regroupe les même mot.
  * et les trie.
  * appelle [liste.sh](liste.sh)
  * appelle [reco.sh](reco.sh)
  
###[liste.sh](liste.sh)
  Permet de générer les .txt.tmp dans liste/
  
###[reco.sh](reco.sh)
  Permet de trouver la langue du texte passé dans le bon format grace à script2.sh
  
###[verb.sh](verb.sh)
  Permet de trouver les verbes les plus utiliser.
  Pour le moment il touve tout les verbes utiliser.
  
##Les dossier

###[Liste](liste/)
Il  __doit__  y avoir des fichier nommé: `4000XX.txt` (XX => initiale de la langue).
Dans ces fichier il doit y avoir un mot par ligne sans espace.

  
# LICENSE
[![Licence Creative Commons](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)  
Ce dépôt de paul est mis à disposition selon les termes de la [licence Creative Commons Attribution - Pas d’Utilisation Commerciale - Partage dans les Mêmes Conditions 4.0 International](http://creativecommons.org/licenses/by-nc-sa/4.0/).

[![Licence Creative Commons](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)  
This deposit by paul is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
