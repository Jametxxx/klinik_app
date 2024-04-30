import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Data Poli")), // Menampilkan judul "Data Poli" pada AppBar
      body: ListView(
        children: const [
          widget(
            // Widget 'widget' tidak valid, mungkin terjadi kesalahan penulisan
            child: Card(
              child: ListTile(
                title: const Text(
                    "Poli Anak"), // Menampilkan teks "Poli Anak" pada ListTile
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                  "Poli Kandungan"), // Menampilkan teks "Poli Kandungan" pada ListTile
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                  "Poli Gigi"), // Menampilkan teks "Poli Gigi" pada ListTile
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                  "Poli THT"), // Menampilkan teks "Poli THT" pada ListTile
            ),
          ),
        ],
      ),
    );
  }
}
