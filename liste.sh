# !/bin/bash
for file in $(ls -1 liste/4000*.txt) do
  awk '{print " "($0)" "}' $file > $file.tmp
done
