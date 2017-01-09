# !/bin/bash
if [ -e rep ]
then
  rm rep
fi
val=0
for file in $(ls -1 liste/4000*.txt.tmp); do

  val=$(fgrep -cf $1 $file)
  echo $file":"$val >> rep

done

sed '1,$s/:/ /g' rep |sort -g -k 2| tail -n 1
echo "la langue du fichier : "$(sed '1,$s/:/ /g' rep |
        sort -g -k 2|
        tail -n 1 |
        cut -c11-|
        sed -e "s/.txt.tmp//g"|
        sed -e "s/[0-9]//g")
