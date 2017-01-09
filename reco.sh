# !/bin/bash
if [ -e rep ]
then
  rm rep
fi
val=0
bool=0
for file in $(ls -1 liste/4000*.txt.tmp); do

  val=$(fgrep -cf $1 $file)
  echo $file":"$val >> rep
  # nbl=$(wc -l $1|sed -re 's/ |[a-z]|[A-Z]|\W//g')
  # nb=$(($nbl/10))
  # if (( $val >= $nb )); then
  if (( $val != 0 )); then
    bool=1
  fi

done
if [ $bool == 1 ]; then
  sed '1,$s/:/ /g' rep |sort -g -k 2| tail -n 1
  echo "la langue du fichier : "$(sed '1,$s/:/ /g' rep |
        sort -g -k 2|
        tail -n 1 |
        cut -c11-12)
else
  echo "la langue du fichier est inconnue"
fi
