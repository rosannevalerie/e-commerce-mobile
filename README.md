# Sweet Tooth Mobile

<details>
  <summary>Tugas 7</summary>

# TUGAS 7
## 1. **Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.**  
Jawaban:  
*Stateless widget* adalah jenis widget yang tampilannya tidak berubah selama aplikasi berjalan karena tidak mempunyai state yang berubah-ubah. Sedangkan *stateful widget* mempunyai state internal yang bisa berubah, memungkinkan widget untuk memperbarui tampilan jika terjadi perubahan pada data. Perbedaan utama antara keduanya adalah bahwa *stateful widget* dapat menyesuaikan dan memperbarui UI berdasarkan perubahan data, sedangkan *stateless widget* tidak memiliki kemampuan tersebut.

## 2. **Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**  
Jawaban:  
Dalam kode saya, saya menggunakan beberapa widget:  
- Scaffold: Menyediakan struktur dasar aplikasi dengan AppBar dan body.
- AppBar: Menampilkan bar di bagian atas aplikasi yang berisi judul.
- Padding: Memberikan jarak di sekitar widget anaknya.
- Column: Menyusun widget secara vertikal.
- Row: Menyusun widget secara horizontal.
- Icon: Menampilkan ikon.
- SnackBar: Menampilkan pesan sementara di bagian bawah layar.
- Card: Menampilkan kotak dengan sudut melengkung dan bayangan, digunakan dalam InfoCard.
- Container: Membungkus widget lain dan memungkinkan pengaturan ukuran, padding, dan dekorasi.
- Text: Menampilkan teks di layar.
- SizedBox: Memberikan jarak vertikal antara widget.
- Center: Menempatkan widget di tengah parent-nya.
- GridView.count: Menampilkan widget dalam bentuk grid dengan jumlah kolom tertentu.
- Material: Menyediakan efek material seperti bayangan dan warna latar belakang.
- InkWell: Menangani interaksi sentuhan pada widget dan memberikan efek ripple.

## 3. **Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**  
Jawaban:  
Fungsi `setState()` digunakan di dalam *stateful widget* untuk memberitahu Flutter bahwa state internal widget telah berubah, yang memerlukan pembangunan ulang UI untuk memperbarui tampilan sesuai dengan data terkini. Fungsi ini mempengaruhi semua variabel state yang ditentukan dalam kelas State. Namun, dalam kode yang menggunakan *stateless widget*, fungsi `setState()` tidak relevan karena widget tersebut tidak memiliki state yang bisa berubah.

## 4. **Jelaskan perbedaan antara `const` dengan `final`.**  
Jawaban:  
`const`: Digunakan untuk mendeklarasikan nilai yang konstan yang harus ditetapkan sebelum program dijalankan dan tidak dapat diubah setelahnya. Nilai konstan ini diinisialisasi pada waktu kompilasi dan bersifat *immutable*.  
`final`: Digunakan untuk variabel yang nilainya hanya boleh diatur sekali dan tidak bisa diubah setelah diinisialisasi. Variabel jenis ini bisa mendapatkan nilainya pada saat *runtime*, tidak terbatas pada waktu kompilasi saja.  

## 5. **Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**  
Jawaban:  
1. Menginstall semua yang diperlukan seperti Dart dan Flutter
2. Membuat proyek Flutter baru dengan command `flutter create e_commerce`
3. Merapikan kode dengan memindahkan beberapa potongan kode ke dalam file `menu.dart` yang saya buat.
4. Membuat tiga tombol sederhana dengan ikon dan teks untuk **Lihat Daftar Candy**, **Tambah Candy**, dan **Logout** dengan menggunakan kelas ItemHomepage yang mendefinisikan nama, ikon, dan warna tombol.  
    ```dart
    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Candy", Icons.list, Colors.blue),
        ItemHomepage("Tambah Candy", Icons.add, Colors.green),
        ItemHomepage("Logout", Icons.logout, Colors.red),
    ];`
5. Mengimplementasikan warna latar belakang yang berbeda untuk setiap tombol melaui properti color pada setiap item dalam list serta menampilkan `Snackbar` saat tombol ditekan.
    ```dart
    return Material(
      color: item.color,  // Gunakan warna dari item
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },`
</details>