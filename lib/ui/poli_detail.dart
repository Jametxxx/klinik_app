import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart
import '../model/poli.dart'; // Mengimpor file poli.dart yang berisi definisi class Poli
import 'poli_detail.dart'; // Mengimpor file poli_detail.dart

class PoliDetail extends StatefulWidget {
  final Poli poli; // Variabel poli dengan tipe data Poli

  const PoliDetail({Key? key, required this.poli}) : super(key: key);

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Detail Poli")), // Menampilkan judul "Detail Poli" pada AppBar
      body: Column(
        children: [
          SizedBox(height: 20), // Membuat jarak vertikal sebesar 20
          Text(
            "Nama Poli : ${widget.poli.namaPoli}", // Menampilkan teks "Nama Poli : {namaPoli}"
            style: TextStyle(fontSize: 20), // Mengatur ukuran font menjadi 20
          ),
          SizedBox(height: 20), // Membuat jarak vertikal sebesar 20
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Mengatur posisi widget dalam Row menjadi rata tengah
            children: [
              ElevatedButton(
                onPressed: () {}, // Mengatur aksi ketika tombol "Ubah" ditekan
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .green), // Mengatur latar belakang tombol menjadi hijau
                child:
                    const Text("Ubah"), // Menampilkan teks "Ubah" pada tombol
              ),
              ElevatedButton(
                onPressed: () {}, // Mengatur aksi ketika tombol "Hapus" ditekan
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .red), // Mengatur latar belakang tombol menjadi merah
                child:
                    const Text("Hapus"), // Menampilkan teks "Hapus" pada tombol
              ),
            ],
          ),
        ],
      ),
    );
  }
}
