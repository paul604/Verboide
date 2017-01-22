# !/bin/bash
if [ ! -e touslesversbeconjugues.txt.tmp ]; then
  awk '{print " "($0)" "}' touslesversbeconjugues.txt > touslesversbeconjugues.txt.tmp1
  sed -r '/^[a-zA-Z]{1,3}$/d' touslesversbeconjugues.txt.tmp1 > touslesversbeconjugues.txt.tmp
  rm touslesversbeconjugues.txt.tmp1
fi

fgrep -xf touslesversbeconjugues.txt.tmp $1|
 uniq -c -i
