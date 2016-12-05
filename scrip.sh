# !/bin/bash
iconv -f ISO-8859-1 -t UTF-8 $1 |
 col -b |
 tr " " "\012" |
 sed -f commandesSED |
 sort -g |
 uniq -c |
 sed -re 's/ /\t/g'|
 sed -re 's/\t\t//g'|
 sort -nb > out.txt
