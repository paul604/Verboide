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

##Les dossier

###[Liste](liste/)
Il  __doit__  y avoir des fichier nommé: `4000XX.txt` (XX => initiale de la langue).
dans ce fichier il doit y avoir un mot par ligne sans espace.

  
# LICENSE
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
  <img alt="Licence Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
</a>
<br />Ce dépôt de paul est mise à disposition selon les termes de la <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
licence Creative Commons Attribution - Pas d’Utilisation Commerciale - Partage dans les Mêmes Conditions 4.0 International</a>.


<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">This deposit</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">paul</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
