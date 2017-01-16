# !/bin/bash
if [ ! -e touslesversbeconjugues.txt.tmp ]; then
  awk '{print " "($0)" "}' touslesversbeconjugues.txt |
  sed -re '/^[a-z]{1,3}$/d' > touslesversbeconjugues.txt.tmp
fi
#3 cara et + // 20 ver les plus
fgrep -xf $1 touslesversbeconjugues.txt.tmp
# comm -12 $1 touslesversbeconjugues.txt.tmp
