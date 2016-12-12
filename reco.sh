# !/bin/bash
for file in $(ls -1 liste/4000*.txt.tmp); do
  fgrep -cf $1 $file
done
