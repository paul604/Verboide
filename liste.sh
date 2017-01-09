# !/bin/bash
for file in $(ls -1 liste/4000*.txt); do
  if [ ! -e $file.tmp ]; then
    awk '{print " "($0)" "}' $file > $file.tmp
  fi
done
