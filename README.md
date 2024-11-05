# Sole de Luxe (mobile)
Aliya Zahira Nadra (2306245863)

<details>
<Summary><b>Tugas 7</b></Summary>

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- Stateless Widget merupakan widget yang bersifat statis atau tidak dapat berubah (immutable) setelah dibuat. Widget ini tidak memiliki kemampuan untuk menyimpan state atau keadaan yang bisa berubah, sehingga sangat cocok digunakan untuk tampilan yang tidak memerlukan perubahan data seperti teks statis, ikon, atau gambar yang tetap.
- Stateful Widget adalah widget yang bersifat dinamis atau dapat berubah (mutable). Widget ini memiliki kemampuan untuk menyimpan dan mengelola state yang bisa diubah selama widget tersebut hidup. Ketika terjadi perubahan state, widget akan melakukan proses render ulang untuk memperbarui tampilan sesuai dengan state terbaru. Stateful Widget sangat cocok digunakan untuk tampilan yang memerlukan interaksi pengguna atau perubahan data, seperti formulir, penghitung (counter), kotak centang (checkbox), atau menu dropdown. 


## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, ada 16 widget yang digunakan. 
- `MaterialApp` : widget root utama aplikasi flutter, menyediakan tema dan konfigurasi dasar aplikasi, mengatur halaman home yang akan ditampilkan pertama kali.
- `Scaffold` : menyediakan struktur dasar layout material design, mengatur AppBar dan body dari halaman.
- `AppBar` : menampilkan bar bagian atas aplikasi, berisi judul "Sole de Luxe" dengan style khusus, menggunakan warna dari tema primary.
- `Column & Row` : Column mengatur widget secara vertikal, Row mengatur widget secara horizontal, digunakan untuk menyusun layout InfoCard dan konten.
- `Card` : menampilkan informasi dalam bentuk kartu dengan efek elevasi, digunakan dalam InfoCard untuk menampilkan NPM, Nama, dan Kelas.
- `Container` : membungkus widget lain dengan padding dan styling, mengatur ukuran dan padding konten dalam card.
- `GridView.count` : menampilkan item dalam bentuk grid, mengatur jumlah kolom (crossAxisCount: 3), menampilkan ItemCard untuk Lihat Item, Tambah Item, dan Logout.
- `Material` : memberikan background color pada ItemCard, mengatur border radius untuk tampilan rounded.
- `InkWell` : memberikan efek ripple saat ItemCard ditekan, menangani onTap event untuk menampilkan SnackBar.
- `Icon` : menampilkan ikon pada setiap ItemCard, menggunakan Icons dari material design (mood, add, logout).
- `Text` : menampilkan teks seperti judul, konten card, dan welcome message, dapat dikustomisasi dengan TextStyle.
- `SizedBox` : memberikan jarak/spasi antar widget, mengatur height antara komponen.
- `Padding`: memberikan padding pada widget, mengatur jarak internal konten.
- `Center` : mengatur posisi widget ke tengah, digunakan untuk menyelaraskan konten.
- `SnackBar`: menampilkan pesan pop-up di bagian bawah layar, muncul saat ItemCard ditekan.
- `MediaQuery` : mendapatkan informasi ukuran layar, digunakan untuk mengatur lebar InfoCard.

## 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` berfungsi untuk memberitahu framework Flutter bahwa terjadi perubahan pada internal state widget, sehingga Flutter perlu melakukan rebuild pada widget tersebut dengan state/nilai yang baru. Variabel yang dapat terdampak oleh setState()adalah semua variabel state yang berada di dalam stateful widget.

## 4. Jelaskan perbedaan antara const dengan final.
1. const digunakan untuk membuat variabel immutable yang nilainya harus diketahui saat compile time, menjadikan objek dan propertinya immutable secara mendalam (deeply immutable), dan nilai yang sama akan berbagi memory yang sama.
2. final memungkinkan nilai diinisialisasi pada saat runtime dan hanya bisa di-assign sekali, namun properti dalam objek final masih bisa diubah (shallow immutable). final lebih cocok untuk nilai yang ditentukan saat runtime tapi tidak akan diubah setelahnya.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Pertama, saya membuat sebuah proyek Flutter baru lewat terminal/cmd dengan nama "sole_de_luxe". Lalu, saya memodifikasi file main.dart agar sesuai dengan tema sole de luxe pada tugas sebelumnya. Setelah itu, saya membuat menu beserta fitur-fiturnya. Lalu saya memodifikasi tampilan dari flutter app saya.
2. Untuk membuat tiga tombol sederhana dengan ikon dan teks. Langkah awalnya, saya membuat class ItemHomepage yang berisi nama dan icon untuk menyimpan properti card. Lalu di MyHomePage, buat list items untuk menyimpan daftar tombol yang diinginkan (Lihat Mood, Tambah Mood, Logout) dengan icon masing-masing. Setelah itu baru saya menambahkan class ItemCard untuk menampilkan tombol dengan fiturnya. 
3. Dalam implementasi warna berbeda, saya membuat daftar warna di MyHomePage dengan 3 warna Emerald berbeda. Lalu menambahkan properti color di class ItemCard dan menghubungkannya ke masing-masing tombol agar memiliki warna yang berbeda.
4. Untuk implementasi Snackbar, saya memanfaatkan fungsi onTap yang ada di ItemCard. Menggunakan ScaffoldMessenger untuk mengelola Snackbar dan menampilkan pesan sesuai tombol yang ditekan ("Kamu telah menekan tombol [nama tombol]").

</details>