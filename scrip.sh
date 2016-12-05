# !/bin/bash
sed -re 's/ +[0-9]//g' <en-2012/en.txt> tmp

iconv -f ISO-8859-1 -t UTF-8 $1 |
 col -b |
 tr " |\t" "\012" |
 #tr '\t' "\012" |
 sed -f commandesSED |
 #filtre négatif
 fgrep -vf fichiernegatif.txt|
 fgrep -vf tmp|
 sort -g |
 uniq -c -i|
 sed -re 's/ /\t/g'|
 sed -re 's/\t\t+//g'|
 sort -nb > out.txt
