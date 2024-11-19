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
        },
      )
    )
    ```
</details>

<details>
  <summary>Tugas 8</summary>

# TUGAS 8
## 1. **Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?**  
Jawaban:  
Dalam Flutter, `const` digunakan untuk membuat objek yang tidak bisa diubah dan dijadikan konstanta sejak saat kompilasi, bukan ketika aplikasi sedang berjalan. Ini membantu menghemat memori karena Flutter tidak perlu membuat objek itu lagi setiap kali ada pembaruan tampilan. Menggunakan `const` bisa meningkatkan kinerja karena objek tersebut hanya dibuat satu kali. Biasanya `const` cocok untuk widget yang isi atau bentuknya tetap, seperti teks dan ikon yang tidak berubah, atau elemen yang sering muncul dengan nilai yang sama, seperti warna atau ukuran tepi. Tapi, sebaiknya tidak pakai `const` untuk widget yang isinya berubah-ubah tergantung kondisi atau state.  

## 2. **Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**  
Jawaban:  
- Column: Menyusun widget secara vertikal (dari atas ke bawah). Biasanya digunakan untuk menumpuk elemen dalam satu kolom di layar. Contoh implementasi:
  ```dart
  Column(
    children: [
      Text("Item 1"),
      Text("Item 2"),
    ],
  );
  ```
- Row: Menyusun widget secara horizontal (dari kiri ke kanan). Digunakan untuk menempatkan elemen-elemen secara berdampingan. Contoh implementasi:
  ```dart
  Row(
    children: [
      Icon(Icons.star),
      Text("Rating"),
    ],
  );
  ```

## 3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!** 
Jawaban:  
Elemen input yang digunakan pada halaman form:
`TextFormField`: Untuk mengisi data teks pada formulir seperti Candy, Price, dan Description.

Elemen input Flutter lain yang tidak digunakan pada tugas ini:  
`Checkbox`: Untuk memilih antara dua opsi (on/off).
`Switch`: Untuk opsi aktif/non-aktif dalam bentuk saklar.
`Slider`: Untuk memilih nilai dalam rentang tertentu.
`DropdownButton`: Untuk memilih satu dari beberapa opsi dalam bentuk dropdown.
`DatePicker/TimePicker`: Untuk memilih tanggal atau waktu, yang biasanya digunakan pada aplikasi dengan data waktu.
`Radio`: Untuk memilih salah satu dari beberapa opsi.

## 4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?** 
Jawaban:  
Untuk mengatur tema secara konsisten, Flutter menyediakan `ThemeData` pada `MaterialApp`. Dengan `ThemeData`, kita bisa mendefinisikan warna, font, dan gaya yang akan diterapkan di seluruh aplikasi. Pada aplikasi yang saya buat, saya menggunakan `ThemeData` untuk mengatur skema warna utama agar seragam dan konsisten di setiap halaman. Ini implementasinya dalam kode saya (pada `main.dart`):  
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
      ).copyWith(secondary: Colors.pink[400]),
      useMaterial3: true,
    ),
    home: MyHomePage(),
  );
}
```

## 5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?** 
Jawaban:  
Untuk menangani navigasi dalam aplikasi Flutter dengan banyak halaman, saya menggunakan beberapa pendekatan. Salah satu cara dasarnya adalah menggunakan `Navigator` dan `MaterialPageRoute` di mana `Navigator.push()` digunakan untuk membuka halaman baru, sementara `Navigator.pop()` digunakan untuk kembali ke halaman sebelumnya. Saya juga menggunakan `Navigator.pushReplacement()` menggantikan halaman saat ini dengan halaman baru.
</details>

<details>
  <summary>Tugas 9</summary>

# TUGAS 9
## 1. **Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data `JSON`? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**  
Jawaban:  
Membuat model untuk pengambilan atau pengiriman data `JSON` sangat penting karena model mempermudah proses pemetaan data `JSON` ke dalam struktur data yang terorganisir, seperti objek. Hal ini memudahkan untuk pengelolaan, validasi, dan manipulasi data, serta mengurangi risiko kesalahan ketika format data berubah. Jika model tidak dibuat, kita harus menangani data secara manual, yang lebih rawan error, sulit di-maintain, dan cenderung meningkatkan kompleksitas kode.

## 2. **Jelaskan fungsi dari library `http` yang sudah kamu implementasikan pada tugas ini**
Jawaban:  
Library `http` digunakan dalam aplikasi Flutter untuk mengirim request `HTTP`, seperti `GET` dan `POST`, ke server backend. Library ini juga berfungsi untuk menerima respons dari server, termasuk mem-parsing data `JSON` yang dikembalikan. Jadi, `http` ini menjadi penghubung antara aplikasi Flutter dan API backend untuk mengelola pertukaran data.

## 3. **Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
Jawaban:  
`CookieRequest` berfungsi untuk menyimpan cookie sesi pengguna, yang berguna untuk mempertahankan status autentikasi pengguna, seperti login. Cookie ini akan secara otomatis dikirim bersama setiap request `HTTP` yang memerlukan autentikasi. Instance `CookieRequest` perlu dibagikan ke seluruh komponen aplikasi agar semua fitur yang memerlukan autentikasi dapat mengakses status sesi yang sama tanpa perlu dikelola ulang di setiap bagian aplikasi.

## 4. **Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**
Jawaban:  
Mekanisme pengiriman data dimulai ketika pengguna memasukkan data melalui form di Flutter. Data ini kemudian dikirim ke backend melalui request `HTTP`, misalnya `POST`. Backend (Django) akan memproses data tersebut, seperti menyimpannya ke database atau menghasilkan respons tertentu. Respons dari backend, dalam format `JSON`, diterima oleh Flutter, diproses, dan hasilnya ditampilkan kepada pengguna di antarmuka aplikasi flutter kita.

## 5. **Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
Jawaban:  
Proses autentikasi meliputi login, register, dan logout. Pada proses login, pengguna memasukkan kredensial di Flutter, yang kemudian dikirim ke Django melalui request `POST`. Django memverifikasi kredensial dan, jika valid, mengembalikan cookie atau token sesi yang disimpan di CookieRequest. Token ini digunakan untuk mengakses fitur yang memerlukan autentikasi. Pada register, data akun dikirim ke Django, diverifikasi, dan disimpan ke database jika valid. Django kemudian memberikan konfirmasi ke Flutter. Pada logout, Flutter mengirimkan request ke Django untuk menghapus sesi atau token, dan Django memastikan pengguna telah keluar. Setelah logout, Flutter menghapus data sesi lokal dan mengarahkan pengguna kembali ke halaman login.

## 6. **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**
Jawaban:  
- Pertama, saya mengimplementasikan fitur registrasi akun. Di Django, saya membuat aplikasi bernama `authentication` dan menambahkan fungsi register di file `views.py` untuk memvalidasi input, seperti memastikan password cocok dan username belum digunakan. Setelah itu, saya konfigurasi path di `urls.py`. Di Flutter, saya membuat file `register.dart` yang berisi form registrasi menggunakan widget seperti `TextField` untuk username, password, dan konfirmasi password. Saya menggunakan package `pbp_django_auth` untuk menghubungkan form ini dengan endpoint Django dan menampilkan pesan kesalahan jika registrasi gagal atau mengarahkan ke halaman login jika berhasil.

- Selanjutnya, saya membuat halaman login pada Flutter. Di Django, saya menambahkan fungsi login di `views.py` untuk memverifikasi kredensial pengguna, lalu saya konfigurasi path di `urls.py`. Di Flutter, saya membuat file `login.dart` yang berisi form login. Saya menggunakan `CookieRequest` dari `pbp_django_auth` untuk mengirim data login ke server Django.

- Setelah itu, saya mengintegrasikan sistem autentikasi Django dengan Flutter. Di Django, saya mengatur `middleware CorsMiddleware` pada `settings.py` untuk mendukung komunikasi lintas domain. Saya juga menambahkan variabel konfigurasi seperti `CORS_ALLOW_ALL_ORIGINS` dan `ALLOWED_HOSTS`. Di Flutter, saya menambahkan Provider di main.dart untuk menyediakan objek `CookieRequest` ke seluruh aplikasi, sehingga session dapat digunakan secara global.

- Model product di django saya mencangkup `name`, `price`, `description`, dan `sweetness`. Di Flutter, saya menggunakan Quicktype untuk membuat model Dart dari data `JSON` yang dihasilkan oleh endpoint Django.

- Berikutnya, saya membuat halaman daftar candy. Di Flutter, saya membuat file `list_candyentry.dart` dan menggunakan `FutureBuilder` untuk mengambil data dari endpoint Django menggunakan `CookieRequest.get`. Data ditampilkan menggunakan widget `ListView.builder`, dengan menampilkan atribut seperti `name`, `price`, `description`, dan `sweetness`. Saya juga memastikan view `JSON` untuk memfilter item berdasarkan pengguna yang sedang login menggunakan `request.user`.

- Selanjutnya, saya mengimplementasikan fitur logout. Di Django, saya menambahkan fungsi logout di `views.py` yang memanggil `auth_logout` untuk menghapus sesi pengguna. Di Flutter, saya mengubah apa yang terjadi ketika tombol logout ditekan. Setelah logout, pengguna diarahkan kembali ke halaman login.

- Terakhir, saya mengintegrasikan form input di Flutter dengan Django. Di Django, saya membuat path `create-flutter/` untuk menerima data dari Flutter dan menyimpannya ke database. Di Flutter, saya membuat form menggunakan `pbp_django_auth` untuk mengirim data form ke Django.

</details>