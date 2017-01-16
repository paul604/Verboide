# !/bin/bash
if [[ -z "$1" ]];
then
  echo "!  \$1=null"

else

  iconv -f ISO-8859-1 -t UTF-8 $1 |
   col -b |
   awk '{print tolower($0)}'|
   tr " " "\012" |
   #remplace " " par saut de ligne
   sed -re 's/\W//g' |
   sort -g |
   #trie
   uniq -c -i|
   sort -nb |
   sed -re 's/ |[0-9]//g'|
   awk '{print " "($0)" "}' > tmp.tmp

  #création de .tmp (ajout de " " av et ap les mot)
  ./liste.sh

  #reco de la langue
  ./reco.sh tmp.tmp
fi
