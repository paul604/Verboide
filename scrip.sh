# !/bin/bash
 sed -re 's/ |[0-9]//g' <en-2012/en.txt |
 sed 100q |
 col -b > tmp.txt

iconv -f ISO-8859-1 -t UTF-8 $1 |
 col -b |
 tr " |\t" "\012" |
 sed 's/\W//g'|
 #filtre négatif
 # fgrep -iw -vf fichiernegatif.txt|
 fgrep -iwvf tmp.txt|
 sort -g |
 uniq -c -i|
 sed -re 's/ /\t/g'|
 sed -re 's/\t\t+//g'|
 sort -nb > out.txt
