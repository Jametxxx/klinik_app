import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart
import '/ui/poli_page.dart'; // Mengimpor file poli_page.dart yang berada di dalam direktori ui

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget ini adalah root dari aplikasi Anda.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klinik',
      home: Beranda(),
        // Ini adalah tema dari aplikasi Anda.
        //
        // COBA INI: Coba jalankan aplikasi Anda dengan "flutter run". Anda akan melihat
        // aplikasi memiliki bilah alat berwarna ungu. Kemudian, tanpa keluar dari aplikasi,
        // coba ubah seedColor dalam colorScheme di bawah ini menjadi Colors.green
        // dan kemudian jalankan "hot reload" (simpan perubahan Anda atau tekan tombol "hot
        // reload" di IDE yang mendukung Flutter, atau tekan "r" jika Anda menggunakan
        // baris perintah untuk menjalankan aplikasi).
        //
        // Perhatikan bahwa hitungan tidak kembali ke nol; state aplikasi tidak hilang saat reload.
        // Untuk mereset state, gunakan hot restart.
        //
        // Ini juga berlaku untuk kode, bukan hanya nilai: Sebagian besar perubahan kode dapat
        // diuji hanya dengan hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  // Widget ini adalah halaman utama aplikasi Anda. Ini adalah widget dengan state, yang berarti
  // ia memiliki objek State (didefinisikan di bawah) yang berisi field yang mempengaruhi
  // tampilan widget ini.

  // Kelas ini adalah konfigurasi untuk state. Ini menyimpan nilai-nilai (dalam kasus ini
  // judul) yang diberikan oleh parent (dalam kasus ini widget App) dan
  // digunakan oleh metode build dari State. Field dalam subclass Widget
  // selalu ditandai "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Panggilan ke setState memberi tahu framework Flutter bahwa ada perubahan
      // di State ini, yang menyebabkannya menjalankan kembali metode build di bawah ini
      // sehingga tampilan dapat mencerminkan nilai-nilai yang diperbarui. Jika kita mengubah
      // _counter tanpa memanggil setState(), maka metode build tidak akan
      // dipanggil lagi, dan tidak ada yang akan tampak terjadi.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Metode ini dijalankan setiap kali setState dipanggil, misalnya seperti yang dilakukan
    // oleh metode _incrementCounter di atas.
    //
    // Framework Flutter telah dioptimalkan untuk membuat metode build berjalan
    // dengan cepat, sehingga Anda hanya perlu membangun ulang apa pun yang perlu diperbarui
    // daripada harus secara individu mengubah instance widget.
    return Scaffold(
      appBar: AppBar(
        // COBA INI: Coba ubah warna di sini menjadi warna tertentu (misalnya
        // Colors.amber) dan lakukan hot reload untuk melihat AppBar
        // berubah warna sementara warna lain tetap sama.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Di sini kita mengambil nilai dari objek MyHomePage yang dibuat oleh
        // metode build App, dan menggunakannya untuk mengatur judul appbar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center adalah layout widget. Ia mengambil satu widget child dan menempatkannya
        // di tengah parent.
        child: Column(
          // Column juga adalah layout widget. Ia mengambil daftar children dan
          // mengatur mereka secara vertikal. Secara default, ia mengukur dirinya sendiri
          // untuk cocok dengan children secaravertikal, dan mencoba sebisa mungkin untuk setinggi parentnya.
          //
          // Column memiliki berbagai properti untuk mengontrol bagaimana ia mengukur dirinya dan
          // bagaimana ia menempatkan children-nya. Di sini kami menggunakan mainAxisAlignment untuk
          // menengahkan children secara vertikal; sumbu utama di sini adalah sumbu vertikal karena
          // Columns adalah vertikal (sumbu silangnya akan horizontal).
          //
          // COBA INI: Panggil "debug painting" (pilih aksi "Toggle Debug Paint"
          // di IDE, atau tekan "p" di konsol), untuk melihat
          // kerangka kawat untuk setiap widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Anda telah menekan tombol ini sebanyak:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
    );
  }
}
