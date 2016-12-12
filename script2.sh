# !/bin/bash

iconv -f ISO-8859-1 -t UTF-8 $1 |
 col -b |
 awk '{print tolower($0)}'|
 tr " " "\012" |
 sed -re 's/\W//g' |
 sort -g |
 uniq -c -i|
 sort -nb |
 sed -re 's/ |[0-9]//g'|
 awk '{print " "($0)" "}' > tmp.tmp

# awk '{print " "($0)" "}' tmp >tmp.tmp
awk '{print " "($0)" "}' liste/4000fr_1.txt >liste/4000fr_1.tmp

fgrep -cf tmp.tmp liste/4000fr_1.tmp
