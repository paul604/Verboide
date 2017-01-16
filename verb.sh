# !/bin/bash
if [ ! -e touslesversbeconjugues.txt.tmp ]; then
  awk '{print " "($0)" "}' touslesversbeconjugues.txt > touslesversbeconjugues.txt.tmp1
  sed -r '/^[a-zA-Z]{1,3}$/d' touslesversbeconjugues.txt.tmp1 > touslesversbeconjugues.txt.tmp
  rm touslesversbeconjugues.txt.tmp1
fi
#3 cara et + // 20 ver les plus
# fgrep -xf $1 touslesversbeconjugues.txt.tmp
# comm -12 $1 touslesversbeconjugues.txt.tmp

fgrep -xf touslesversbeconjugues.txt.tmp $1|
 uniq -c -i
# sort -nb |
# sed -re 's/ |[0-9]//g'|
# awk '{print " "($0)" "}'


#fgrep -cvf touslesversbeconjugues.txt.tmp touslesversbeconjugues.txt.tmp1
