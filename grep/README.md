# Ganyang Slot Judi

Bash script untuk mencari berkas di root direktori web server yang mengandung kata-kata slot judi memanfaatkan perintah `grep`.

## Berkas

* Berkas `slot-list.txt` berisi daftar kata yang terkait dengan slot judi. Daftar ini akan diperbarui secara berkala.

* Berkas `grep-slot.sh` merupakan Bash script yang berfungsi mencari berkas di root direktori web server yang mengandung kata-kata yang ada di berkas `slot-list.txt`.

## Cara Penggunaan

Sebelum mengeksekusi berkas `grep-slot.sh`, pastikan untuk menyesuaikan variabel `dir_scope` yang ada di berkas tersebut. Variabel tersebut berfungsi membatasi area pencarian.

```bash
# Cakupan direktori yang ingin dicari. Sesuaikan bagian ini.
dir_scope="/var/www"
```

Gunakan perintah di bawah ini untuk mengeksekusi berkas `grep-slot.sh`:

```bash
bash grep-slot.sh
```
