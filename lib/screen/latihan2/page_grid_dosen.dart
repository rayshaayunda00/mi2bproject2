import 'package:flutter/material.dart';
import 'page_detail_dosen.dart'; // Import halaman detail dosen

class PageGridDosen extends StatefulWidget {
  const PageGridDosen({super.key});

  @override
  State<PageGridDosen> createState() => _PageGridDosenState();
}

class _PageGridDosenState extends State<PageGridDosen> {
  // Data Dosen
  List<Map<String, dynamic>> listDosen = [
    {
      "nidn": "12345678",
      "nama": "Dr. Budi Santoso",
      "email": "budi.santoso@kampus.ac.id",
      "gambar": "gambar/berita1.jpeg"
    },
    {
      "nidn": "87654321",
      "nama": "Prof. Siti Aminah",
      "email": "siti.aminah@kampus.ac.id",
      "gambar": "gambar/berita2.jpeg"
    },
    {
      "nidn": "11223344",
      "nama": "Dr. Andi Saputra",
      "email": "andi.saputra@kampus.ac.id",
      "gambar": "gambar/berita3.jpeg"
    },
    {
      "nidn": "44332211",
      "nama": "Dr. Rina Kurniasih",
      "email": "rina.kurniasih@kampus.ac.id",
      "gambar": "gambar/berita4.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Dosen"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          itemCount: listDosen.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageDetailDosen(dosen: listDosen[index]),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        listDosen[index]["gambar"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(
                          listDosen[index]["nama"],
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "NIDN: ${listDosen[index]["nidn"]}",
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          listDosen[index]["email"],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}