#!/bin/bash

rm -rf ./stem
rm -rf ./noStem

mkdir stem
mkdir stem/jelinek
mkdir stem/Laplace
mkdir stem/tfidf

mkdir noStem
mkdir noStem/jelinek
mkdir noStem/Laplace
mkdir noStem/tfidf

for file in stem noStem
  do
  for model in tfidf Laplace jelinek
    do

      head -n 6 ./evalRes_${file}/ret_${model}.txt | tail -n 3 | awk '{print $1 "\t" $2}' | cat >> ./${file}/${model}/totalnum.txt
      head -n 18 ./evalRes_${file}/ret_${model}.txt | tail -n 11 | awk '{print $2 "\t" $3}' | cat >> ./${file}/${model}/inter_RPcurve.txt
      head -n 20 ./evalRes_${file}/ret_${model}.txt | tail -n 1 | sed 's/^[ \t]*//g' | cat >> ./${file}/${model}/avg_prec.txt
      head -n 30 ./evalRes_${file}/ret_${model}.txt | tail -n 9 | awk '{print $2 "\t" $4}' | cat >> ./${file}/${model}/prec.txt
      head -n 32 ./evalRes_${file}/ret_${model}.txt | tail -n 1 | awk '{print $2}' | sed 's/^[ \t]*//g' | cat >> ./${file}/${model}/r-prec.txt 
    done
  done

# head -n 6 ./evalRes_stem/ret_jelinek.txt | tail -n 3 | awk '{print $1 "\t" $2}' | cat >> ./jelinek/totalnum.txt
# head -n 18 ./evalRes_stem/ret_jelinek.txt | tail -n 11 | awk '{print $2 "\t" $3}' | cat >> ./jelinek/inter_RPcurve.txt
# head -n 20 ./evalRes_stem/ret_jelinek.txt | tail -n 1 | sed 's/^[ \t]*//g' | cat >> ./jelinek/avg_prec.txt
# head -n 30 ./evalRes_stem/ret_jelinek.txt | tail -n 9 | awk '{print $2 "\t" $4}' | cat >> ./jelinek/prec.txt
# head -n 32 ./evalRes_stem/ret_jelinek.txt | tail -n 1 | awk '{print $2}' | sed 's/^[ \t]*//g' | cat >> ./jelinek/r-prec.txt

# head -n 6 ./evalRes_stem/ret_Laplace.txt | tail -n 3 | awk '{print $1 "\t" $2}' | cat >> ./laplace/totalnum.txt
# head -n 18 ./evalRes_stem/ret_Laplace.txt | tail -n 11 | awk '{print $2 "\t" $3}' | cat >> ./laplace/inter_RPcurve.txt
# head -n 20 ./evalRes_stem/ret_Laplace.txt | tail -n 1 | sed 's/^[ \t]*//g' | cat >> ./laplace/avg_prec.txt
# head -n 30 ./evalRes_stem/ret_Laplace.txt | tail -n 9 | awk '{print $2 "\t" $4}' | cat >> ./laplace/prec.txt
# head -n 32 ./evalRes_stem/ret_Laplace.txt | tail -n 1 | awk '{print $2}' | sed 's/^[ \t]*//g' | cat >> ./laplace/r-prec.txt

# head -n 6 ./evalRes_stem/ret_tfidf.txt | tail -n 3 | awk '{print $1 "\t" $2}' | cat >> ./tfidf/totalnum.txt
# head -n 18 ./evalRes_stem/ret_tfidf.txt | tail -n 11 | awk '{print $2 "\t" $3}' | cat >> ./tfidf/inter_RPcurve.txt
# head -n 20 ./evalRes_stem/ret_tfidf.txt | tail -n 1 | sed 's/^[ \t]*//g' | cat >> ./tfidf/avg_prec.txt
# head -n 30 ./evalRes_stem/ret_tfidf.txt | tail -n 9 | awk '{print $2 "\t" $4}' | cat >> ./tfidf/prec.txt
# head -n 32 ./evalRes_stem/ret_tfidf.txt | tail -n 1 | awk '{print $2}' | sed 's/^[ \t]*//g' | cat >> ./tfidf/r-prec.txt
