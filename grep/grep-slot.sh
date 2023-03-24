#!/bin/bash

############
## SEARCH ##
############

# Berkas hasil pencarian
searh_result="searh_result_$(date +"%d-%m-%Y_%H-%M").txt"

# membaca daftar kata-kata dari file kata.txt
words="$(cat slot-list.txt)"

# batasan direktori pencarian
dir_scope="/path/to/search"

# mencari setiap kata dalam daftar kata-kata pada setiap file dalam direktori pencarian
for word in $words
do
  result=$(grep -lR --include=* $word $dir_scope)
  if [ -n "$result" ]; then
    echo $result | cut -d':' -f1 | sort | uniq >> $searh_result
  fi
done

######################
## FORMATTED RESULT ##
######################

# Hasil Pengecekan
formatted_result="slot_$(date +"%d%m%Y_%H%M").txt"

# Baca berkas hasil pengecekan
file="$searh_result"

# Baca setiap baris dalam berkas
while IFS= read -r line
do
    # Gantikan spasi dengan baris baru
    line=$(echo "$line" | tr ' ' '\n')
    echo "$line" >> $formatted_result
done < "$file"

# Menghapus berkas hasil pencarian
rm -rf $searh_result

# ECHO
echo "##########"
echo "## INFO ##" 
echo "##########"
echo ""
echo "Hasil pengecekan dapat dilihat di berkas $$formatted_result"
echo ""