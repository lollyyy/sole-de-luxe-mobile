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

<details>
<Summary><b>Tugas 8</b></Summary>

## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
`const` di Flutter digunakan untuk membuat objek yang nilainya konstan dan tidak akan berubah (immutable) saat compile-time. 
Keuntungannya ketika menggunakan `const`:
- Meningkatkan performa aplikasi karena objek dibuat saat compile-time
- Menghemat memori karena menggunakan instance yang sama
- Mencegah perubahan tidak disengaja pada nilai

Waktu terbaik untuk menggunakan `const`:
- Widget statis yang tidak berubah
- Nilai yang sudah diketahui saat compile-time
- Collections yang isinya tetap

Sebaiknya tidak digunakan ketika:
- Data yang berubah saat runtime
- Widget dengan state
- Data dari API/database
- Widget yang bergantung pada context

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column digunakan untuk menyusun widget secara vertikal (atas ke bawah), sedangkan Row digunakan untuk menyusun widget secara horizontal (kiri ke kanan).
Contoh di layout widget:
- Column digunakan untuk menyusun judul dan form fields di shoesentry_form.dart
- Row digunakan untuk menyusun card NPM, Name, dan Class secara horizontal di menu.dart

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada form Sole de Luxe, saya menggunakan TextFormField untuk semua input:
- Shoes Name (text)
- Price (number)
- Description (text)
- Color (text)
- Condition (text)
- Release Year (number)

Elemen input Flutter lain yg tidak digunakan : `Checkbox`, `RadioButton`, `DropdownButton`, `Slider`, `Switch`, `DatePicker`, `TimePicker`, `FileInput`.

Pada Sole de Luxe saya menggunakan TextFormField karena sesuai dengan kebutuhan input data sepatu yang kebanyakan berupa teks dan angka, serta memiliki fitur validasi bawaan yang mudah diimplementasikan.

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Saya mengatur tema aplikasi Sole de Luxe di main.dart dengan menggunakan ThemeData dan colorScheme untuk menetapkan warna utama aplikasi. Tema ini diimplementasikan secara konsisten di seluruh aplikasi melalui penggunaan Theme.of(context) untuk AppBar, buttons, dan cards, serta menggunakan warna-warna yang sesuai dengan color palette emerald untuk setiap komponen UI.

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Saya menggunakan Navigator.push() dan Navigator.pushReplacement() untuk navigasi antar halaman di aplikasi Sole de Luxe. Implementasinya ada di drawer untuk navigasi ke halaman utama dan form tambah sepatu, serta di card "Tambah Item" yang akan mengarahkan ke halaman form, dengan MaterialPageRoute sebagai routenya.
</details>