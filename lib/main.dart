import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double hasil = 0;
  String pesan = "";

  TextEditingController diagonal1 = TextEditingController();
  TextEditingController diagonal2 = TextEditingController();

  void hitungLuas() {
    double inputDiagonal1 = double.tryParse(diagonal1.text) ?? 0;
    double inputDiagonal2 = double.tryParse(diagonal2.text) ?? 0;

    double luas = (inputDiagonal1 * inputDiagonal2) / 2;
    hasil = luas;
    print(hasil);
    setState(() {
      pesan = "Hasil luas layang layang adalah : $hasil";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aplikasi Menghitung luas layang-layang",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: diagonal1,
                  decoration: InputDecoration(labelText: "Masukan Diagonal 1"),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: diagonal2,
                  decoration: InputDecoration(labelText: "Masukan Diagonal 2"),
                ),
                SizedBox(height: 20),
                Text(
                  pesan,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                ElevatedButton(onPressed: hitungLuas, child: Text("Hitung Hasil")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
