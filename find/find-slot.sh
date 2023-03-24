#!/bin/bash

# Hasil Pengecekan
check_result="result_slot_judi_$(date +"%d-%m-%Y_%H-%M").txt"

# ECHO
echo "########################" >> $check_result
echo "# CEK FOLDER SLOT JUDI #" >> $check_result
echo "########################" >> $check_result
echo "" >> $check_result

# Daftar nama direktori slot judi
slot_list="slot-list.txt"

# Cakupan direktori yang ingin dicari. Sesuaikan bagian ini.
dir_scope="/var/www"

# Mengambil daftar nama folder yang ingin dicari dari file slot_list.txt
folders=$(cat $slot_list)

# Loop untuk setiap nama folder yang ingin dicari
for folder in $folders
do
  # Mencari folder dengan menggunakan perintah find
  results=$(find $dir_scope -type d -name $folder 2>/dev/null)
  
  # Jika folder ditemukan, tampilkan hasil pencarian per baris
  if [ -n "$results" ]
  then
    echo "Folder $folder ditemukan di:" >> $check_result
    echo "======================================================" >> $check_result
    echo "$results" >> $check_result
    echo "======================================================" >> $check_result
    echo "" >> $check_result
  fi
done

# ECHO
echo "########"
echo "# INFO #" 
echo "########"
echo ""
echo "Hasil pengecekan dapat dilihat di berkas $check_result"