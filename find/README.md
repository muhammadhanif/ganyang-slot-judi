# Ganyang Slot Judi

Bash script untuk mencari direktori slot judi di root direktori web server memanfaatkan perintah `find`.

## Berkas

* Berkas `slot-list.txt` berisi daftar nama direktori slot judi. Daftar ini akan diperbarui secara berkala.

* Berkas `find-slot.sh` merupakan Bash script yang berfungsi mencari nama direktori slot judi di root direktori web server berdasarkan daftar nama direktori yang ada di berkas `slot-list.txt`.

## Cara Penggunaan

Sebelum mengeksekusi berkas `find-slot.sh`, pastikan untuk menyesuaikan variabel `dir_scope` yang ada di berkas tersebut. Variabel tersebut berfungsi membatasi area pencarian.

```bash
# Cakupan direktori yang ingin dicari. Sesuaikan bagian ini.
dir_scope="/var/www"
```

Gunakan perintah di bawah ini untuk mengeksekusi berkas `find-slot.sh`:

```bash
bash find-slot.sh
```
